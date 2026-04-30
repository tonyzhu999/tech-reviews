#!/usr/bin/env python3
"""
收益监控脚本
定期检查网站状态，并提醒查看联盟后台收益
"""

import urllib.request
import urllib.error
import datetime

def check_website():
    """检查网站是否在线"""
    url = "https://tonyzhu999.github.io/tech-reviews/"
    try:
        response = urllib.request.urlopen(url, timeout=10)
        return response.status == 200
    except Exception as e:
        return False, str(e)

def main():
    # 检查网站状态
    result = check_website()
    
    if result == True:
        status = "✅ 网站运行正常"
    else:
        status = f"⚠️ 网站异常: {result}"
    
    # 生成报告
    report = f"""
📊 Tech Reviews 站点状态报告
时间: {datetime.datetime.now().strftime('%Y-%m-%d %H:%M')}

{status}

💰 收益检查提醒:
请登录以下平台查看收益情况:

1️⃣ 京东联盟
   链接: https://union.jd.com/index
   查看: 推广效果 → 订单明细 → 预估收入

2️⃣ 淘宝联盟  
   链接: https://pub.alimama.com
   查看: 报表 → 推广效果 → 预估收益

📈 数据观察建议:
- 新站通常2-4周后开始有零星订单
- 3个月后进入稳定增长期
- 建议每周查看一次数据趋势

有收益进账时，我会第一时间通知你！
"""
    print(report)
    return report

if __name__ == "__main__":
    main()
