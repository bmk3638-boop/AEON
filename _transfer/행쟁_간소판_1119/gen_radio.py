# 노조법 복습 라디오 생성기 (쉼 단위 0.6초, [쉼 n]=1.2n초) (Windows, edge-tts). 사용: python gen_radio.py <대본폴더> <출력폴더>
import asyncio, os, re, sys, edge_tts
VOICE = "ko-KR-SunHiNeural"; RATE = "-5%"
src, out = sys.argv[1], sys.argv[2]
here = os.path.dirname(os.path.abspath(__file__))
sil = open(os.path.join(here, "silence_unit.mp3"), "rb").read()
os.makedirs(out, exist_ok=True)
async def seg(text):
    buf = b""
    async for ch in edge_tts.Communicate(text, VOICE, rate=RATE).stream():
        if ch["type"] == "audio": buf += ch["data"]
    return buf
async def main():
    for fn in sorted(os.listdir(src)):
        if not fn.endswith(".txt"): continue
        dst = os.path.join(out, fn[:-4] + ".mp3")
        if os.path.exists(dst): print("skip", fn); continue
        data = b""
        for line in open(os.path.join(src, fn), encoding="utf-8"):
            line = line.strip()
            if not line: continue
            m = re.match(r"\[쉼 (\d+)\]", line)
            if m: data += sil * (2 * int(m.group(1))); continue
            for k in range(3):
                try: data += await seg(line); break
                except Exception as e: print("retry", fn, e); await asyncio.sleep(3)
            data += sil
        open(dst, "wb").write(data); print("done", fn, len(data))
asyncio.run(main())
