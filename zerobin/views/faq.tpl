<div class="well" id="faq">

  <h1>FAQ</h1>

  <hr width="90%">

  <dl>

    <dt>How does it work?</dt>
    <dd>
        <p>We generate a random key, and encrypt the paste with it using
           the sjcl javascript library.</p>
        <p>The content is sent encrypted to the server, which returns the
           address of the paste.</p>
        <p>The javascript code take the address, and add the encryption
           key in the URL hash (#).</p>
        <p>When somebody reads the paste, he goes to the URL. If
           the hash with the key is in it, the javascript will use it
           to decrypt the content sent by the server.</p>
        <p>The browser never sends the hash to the server, so it does not
           receives the key.</p>
    </dd>

    <dt>Javascript encryption is not secure!</dt>
    <dd>
        <p>No it's not.</p>
        <p>The goal of 0bin is <strong>not</strong> to protect the users
           or their secrets.</p>
        <p>The goal is to make it hard to sue the host because of the
           content users pasted in his service. The idea is that you can not
           require somebody to moderate something he can't read</p>
    </dd>
    <dt>What if the server change the Javascript? Or in the case of a man
        in the middle attack?</dt>
    <dd>
      <p>Read above.</p>
      <p>0bin the is not built to protect the users content. It is built to
        protect the host. If the user content is compromised, 0bin still
        provides the host with the main feature: ignorance of the hosted content.</p>
      <p>The case where the host himself compromise the encryption process
         to read the content makes no sense: in that case he wouldn't have
         installed 0bin in the first place. 0bin is here to protect him.</p>
      <p><strong>If you want to be sure nobody can read your content, you should
           not use 0bin</strong>. Use
         <a href="https://crypto.cat/">cryptocat</a> (but JS crypto warnings apply)
         or <a href="http://www.cypherpunks.ca/otr/">OTR</a> for chatting,
         <a href="http://gnupg.org/">GPG</a>/<a href="http://enigmail.mozdev.org/home/index.php.html">enignmail</a>
         for emails and <a href="http://www.truecrypt.org/">TrueCrypt</a> for storage.</p>
    </dd>
    <dt>How did you come out with such a cool idea?</dt>
    <dd>
      <p>We didn't, we based 0bin on
        <a href="http://sebsauvage.net/paste/">sebsauvage's work</a>.</p>
    </dd>

  </dl>

</div>



%rebase base settings=settings
