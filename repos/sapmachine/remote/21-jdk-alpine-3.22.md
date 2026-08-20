## `sapmachine:21-jdk-alpine-3.22`

```console
$ docker pull sapmachine@sha256:fde091a925510b78a2d444f8255fe357325a1d5aab7831e7b20d303dcd6339bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jdk-alpine-3.22` - linux; amd64

```console
$ docker pull sapmachine@sha256:b4b2759c9b30cb3bb558f8d60725120de3f54d2cfe0787ab1b0a304af912d8a5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.2 MB (223193647 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e7097527553877479a355b105130ac3813bbc8ab93a0deba68bf362a659a9d29`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 18:07:33 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jdk=21.0.12.1-r0 # buildkit
# Thu, 20 Aug 2026 18:07:33 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jdk
# Thu, 20 Aug 2026 18:07:33 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b78b9af6a9befe00caceba9489606c01ccc20330ad7f180270703555c44c4bd5`  
		Last Modified: Thu, 20 Aug 2026 18:07:53 GMT  
		Size: 219.4 MB (219406052 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-alpine-3.22` - unknown; unknown

```console
$ docker pull sapmachine@sha256:e254e79589d6953b31d534e2064fdd1b2605095b8d8622a36992508cc8ca39c2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **520.3 KB (520269 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c939a3fa1c373aae2ec474dbdac69bdecc78606139ca3c22f7d0449ba2f25832`

```dockerfile
```

-	Layers:
	-	`sha256:7c03c93c7a8ff1a521ee91a99c2813bf01564464920c1c848dc9293d585a72b3`  
		Last Modified: Thu, 20 Aug 2026 18:07:49 GMT  
		Size: 512.6 KB (512637 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:27861c9a121c1091ba733d59c144a5cdb894ca1f4299c85d9bad4abc3fc5bb96`  
		Last Modified: Thu, 20 Aug 2026 18:07:49 GMT  
		Size: 7.6 KB (7632 bytes)  
		MIME: application/vnd.in-toto+json
