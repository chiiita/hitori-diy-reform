#!/bin/bash
cd "$(dirname "$0")"
IP=$(ipconfig getifaddr en0 2>/dev/null || ipconfig getifaddr en1 2>/dev/null)
echo "=================================================="
echo " リフォーム手順書サイト ローカルサーバー起動中"
echo "  このMacで見る:   http://localhost:8790/"
[ -n "$IP" ] && echo "  同じWi-Fiのスマホ: http://$IP:8790/"
echo "  （このウィンドウを閉じると停止／Control+Cで停止）"
echo "=================================================="
python3 -m http.server 8790
