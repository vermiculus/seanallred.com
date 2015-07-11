#!/bin/sh

cat <<EOF > "`date "+%Y-%m-%d"`-$1.markdown"
---
layout: review
category: reviews
name: $1
recommend: ***
summary: >

  ***

---

***
EOF
