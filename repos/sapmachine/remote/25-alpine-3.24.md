## `sapmachine:25-alpine-3.24`

```console
$ docker pull sapmachine@sha256:d98da7d670a06035ada751cf9063849eedafc1dd9437feb831b2fe6082a31ce7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:25-alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:e9267e8b29f8d0b111ae3932ada115730b83de46ec9efbc6afac5d77fb8bb39d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.4 MB (229407090 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3a913252f7e03317c9b8b7dd4ee9511806966883e0ecd8dfd93ae4f019571b1d`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 17:51:07 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-25-jdk=25.0.5.0.3-r0 # buildkit
# Mon, 26 Oct 2026 17:51:07 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-25-sapmachine-jdk
# Mon, 26 Oct 2026 17:51:07 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1ad95e864377aa66f6f0960a9555d8d1bdb8e8e29bca1990eef4763a05d83a35`  
		Last Modified: Mon, 26 Oct 2026 17:51:28 GMT  
		Size: 225.6 MB (225553981 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:25-alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d2004250dc03f9b493da70df2ed294748fd49a10ca82c502601c1bfbfd863008
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **511.0 KB (510970 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c4d05883cdab0b7efbaec5824a7ae39e9c24edf2409b159dc703ab719a6a0de5`

```dockerfile
```

-	Layers:
	-	`sha256:26417bf7fc2eb249833d1368edeaedb238c5765381f17ac77352f1b9b03bf0a3`  
		Last Modified: Mon, 26 Oct 2026 17:51:24 GMT  
		Size: 502.7 KB (502672 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:05cba88a6674ecc9bd8670c85b81a5f1d3d13d484b8c49de57d64ac9e4f9749a`  
		Last Modified: Mon, 26 Oct 2026 17:51:24 GMT  
		Size: 8.3 KB (8298 bytes)  
		MIME: application/vnd.in-toto+json
