"""
GrowthBuddy AI - バックエンドサーバー
Vertex AIのGeminiモデルを活用した成長支援AIパーソナルエージェント
"""

import os
from flask import Flask, request, jsonify
from services.ai_service import process_reflection

app = Flask(__name__)

@app.route('/health', methods=['GET'])
def health_check():
    """ヘルスチェックエンドポイント"""
    return jsonify({"status": "healthy"})

@app.route('/api/reflection', methods=['POST'])
def reflection():
    """ユーザーの振り返りを処理するエンドポイント"""
    data = request.get_json()
    if not data or 'text' not in data:
        return jsonify({"error": "振り返りのテキストが必要です"}), 400
    
    response = process_reflection(data['text'], data.get('user_id', None))
    return jsonify(response)

if __name__ == '__main__':
    port = int(os.environ.get("PORT", 8080))
    app.run(host='0.0.0.0', port=port, debug=False)