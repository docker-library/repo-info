## `sapmachine:21-jdk-alpine-3.24`

```console
$ docker pull sapmachine@sha256:d7ffe80ab811fcbdbf49503b2e0e0ee578efc1d4017726abb4dc2d920f2b776f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jdk-alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:9a44c9e67b18e1d8ca25a340cd42d40bb53810c5e74ab90ce7eb6d86698e0374
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.8 MB (223839637 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12b609c5e4719d7fcafa0c745ce5c23fcba616d703a63ae2b48702d6f0d289fa`
-	Default Command: `["jshell"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 16:36:42 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jdk=21.0.12.1-r0 # buildkit
# Wed, 16 Sep 2026 16:36:42 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jdk
# Wed, 16 Sep 2026 16:36:42 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8eb2f541df7d1889998b7606261c6cf42338c6a47bca5ee81d1dcfe4c49120bc`  
		Last Modified: Wed, 16 Sep 2026 16:37:04 GMT  
		Size: 220.0 MB (219993246 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jdk-alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:d85d97fae10d154a9b625276f223036c1c26ca4fa1efb5aa81e0f7eeaa326a7d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **521.0 KB (520989 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27b9d9838fe1f741fd5f05cadcb054e443dfab42883fa42e68bde86f56e65c9d`

```dockerfile
```

-	Layers:
	-	`sha256:9d37363b713720732761a4adec4c0eb4feda0fbda1b475fc26f7184362900939`  
		Last Modified: Wed, 16 Sep 2026 16:36:59 GMT  
		Size: 513.4 KB (513356 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47bf70fb9ac0c35f55c5eba989b3ea0e321e51eab39521d93ac0f954afc961b4`  
		Last Modified: Wed, 16 Sep 2026 16:36:59 GMT  
		Size: 7.6 KB (7633 bytes)  
		MIME: application/vnd.in-toto+json
