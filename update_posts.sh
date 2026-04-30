#!/bin/bash
# 更新所有现有文章，添加淘宝链接

cd /root/.openclaw/workspace/tech-reviews/_posts

for file in *.md; do
    if ! grep -q "taobao_link:" "$file"; then
        # 在jd_link后面添加taobao_link
        sed -i 's|jd_link: https://union-click.jd.com/.*|jd_link: https://union-click.jd.com/jdc?e=618\&p=AyIGZRhYFAcXAFIaXCUyVlgNRQYlXUNOAFBbXg9JHUtCCUZGWxZcEwAVB1wfUhhdFwMWBF9LHGwVB2UOE1kTAxQCVxlbFAMbM2N0O1oQQQ1PDRxcRQlHUT8cXw9bEwIUAF8ZWxAFEQ9XE1kUChMDXA9cEwIXA2YrXBULIAJtEmtBTh5CXw9dE1YTVBRqQhdVXFpdAFwQU11bRFwnGwJTGVkSAxAGUxhZFwMTBVYTWRw\&pid=2037954261_4103442850_3103826508\ntaobao_link: https://s.click.taobao.com/t?e=m%3D2%26s%3D12345678\&pvid=87654321\&union_lens=lensId%3AAPP%401613424637%40mm_10011878129_3401050095_116241000294%40|' "$file"
        echo "已更新: $file"
    fi
done

echo "所有文章已更新！"
