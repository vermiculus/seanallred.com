#!/bin/sh

cat <<EOF > "`date "+%Y-%m-%d"`-$1.markdown"
---
layout: post
title: $1
subtitle: ***
comments: true
date: `date "+%Y-%m-%d %T %z"`
category: tex

---

***

<!--more-->
EOF
