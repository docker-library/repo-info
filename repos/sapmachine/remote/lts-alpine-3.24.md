## `sapmachine:lts-alpine-3.24`

```console
$ docker pull sapmachine@sha256:73fc559295a228e1b512c2d7c36a659bb0c2bf25e3e97dbfe8eab88ca3b11659
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:lts-alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:0511998eb9260a796ef5ebb66e1dbd5ffc608eecec5a1ca738ab7659f0061fc8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.4 MB (229410282 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a203c3454f7f70b1815e91cad8499901a5f10a9928daa4cb0102f3ebdecc21cc`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 16:56:03 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jdk=25.0.5.0.2-r0 # buildkit
# Fri, 23 Oct 2026 16:56:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jdk
# Fri, 23 Oct 2026 16:56:03 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c84216c1311c2ba5c1ce3af55452e15f3b4a41d86b88bd5ee52becb2b45f31a2`  
		Last Modified: Fri, 23 Oct 2026 16:56:24 GMT  
		Size: 225.6 MB (225557173 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:lts-alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:07269474d07bbf1cba862f2c5ded833740c2474531475754ec651cc66a7c65e2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **511.0 KB (510970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:65de1fae0eb64a9797808e43f4bdf8d3f4e9ff2ba60d56bd9995c9377b7532e1`

```dockerfile
```

-	Layers:
	-	`sha256:abfc424ff7f073dd51f20eb50b699c080c8dfc33e8f56f1be45386a61a32e837`  
		Last Modified: Fri, 23 Oct 2026 16:56:20 GMT  
		Size: 502.7 KB (502672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:52691a50fde895f6f3df22712f126ab6e839894bc8048d50d184b8a1f6a659f2`  
		Last Modified: Fri, 23 Oct 2026 16:56:20 GMT  
		Size: 8.3 KB (8298 bytes)  
		MIME: application/vnd.in-toto+json
