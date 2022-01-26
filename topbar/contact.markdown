---
layout: post
permalink: "/contact"
title: "Contact Me"
---

<style>
  input[type="text"], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: -12px;
    margin-bottom: 24px;
    resize: vertical;
    font-size: 16px;
  }
  input[type="email"], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: -12px;
    margin-bottom: 24px;
    resize: vertical;
    font-size: 16px;
  }

  button[type="submit"] {
    background-color: #000000;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    font-size: 24px;
    text-align: center;
  }
</style>

<form action="https://getform.io/f/48d79c83-3c81-4b2c-9e3f-866352164fa5" method="POST">
    <p style="font-size: 24px;">Name</p>
    <input type="text" name="name" required/>
    <p style="font-size: 24px;">Company</p>
    <input type="text" name="company">
    <p style="font-size: 24px;">Email</p>
    <input type="email" name="email" size="50" required/>
    <p style="font-size: 24px;">Message</p>
    <textarea type="text" name="message" rows="5" cols="50" required></textarea>
    <br>
    <p><em>&ensp;Sending this form will take you to an external thank you page</em></p>
    <button type="submit">Send</button>
</form>