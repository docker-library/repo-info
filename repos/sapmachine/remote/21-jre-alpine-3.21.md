## `sapmachine:21-jre-alpine-3.21`

```console
$ docker pull sapmachine@sha256:a3fb74e1a2773c06d3e460a48cac7871bad19926ab0e45e462771572b59a056f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jre-alpine-3.21` - linux; amd64

```console
$ docker pull sapmachine@sha256:65864929d50758e2295f14a69ecba0ad14ddc5c57fb38407a3fdd0fbcef69900
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **66.2 MB (66220076 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:adf3190f9eecbcd24402773ab9a6222fc5e8310f5af28b93e54e9f75318c20b8`
-	Default Command: `["sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:43 GMT
ADD alpine-minirootfs-3.21.10-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:43 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:36:50 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jre=21.0.13.0.3-r0 # buildkit
# Thu, 05 Nov 2026 19:36:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jre
# Thu, 05 Nov 2026 19:36:50 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:871d48e9bf6b789a439a4a19c1e152009924d818e60f7c51e498573223cd7cda`  
		Last Modified: Thu, 05 Nov 2026 18:00:48 GMT  
		Size: 3.6 MB (3625402 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0666a89387d5fb21310761d57e421d0046556e520be1d485c4d523bc5a7ee9b1`  
		Last Modified: Thu, 05 Nov 2026 19:37:03 GMT  
		Size: 62.6 MB (62594674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-alpine-3.21` - unknown; unknown

```console
$ docker pull sapmachine@sha256:951473a64d2407fc3bb6b9f14b9ca7bacf03bd8dd8eb429c490eaad98e9ba1c0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.2 KB (435185 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f027d956ee0ec850039270b2263d9025d1685b03e99c875b72d6d24e8dd5364b`

```dockerfile
```

-	Layers:
	-	`sha256:cde705b7697fcd2243efaab3c67d270968020690fc378652497cdc3a2c5c8d09`  
		Last Modified: Thu, 05 Nov 2026 19:37:01 GMT  
		Size: 428.2 KB (428205 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:368e7b9c0a1ae905798217b1941ef95c31e324f06defd118b29477a88cd85526`  
		Last Modified: Thu, 05 Nov 2026 19:37:01 GMT  
		Size: 7.0 KB (6980 bytes)  
		MIME: application/vnd.in-toto+json
