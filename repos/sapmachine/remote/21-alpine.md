## `sapmachine:21-alpine`

```console
$ docker pull sapmachine@sha256:79b5a6aa7428cc27fef11c2574c30651f236796a2dbb38fe0e56a084a7096dd8
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-alpine` - linux; amd64

```console
$ docker pull sapmachine@sha256:05eef2b89a1ba4e733c793aee51978634a0847b800eb1da29f6a20ee3ee8fe1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **223.7 MB (223675730 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fb278774ede8df344d77346dc805e5df346aaf255c716a82fbec71fbcd72a650`
-	Default Command: `["jshell"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 18:07:19 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jdk=21.0.12.1-r0 # buildkit
# Thu, 20 Aug 2026 18:07:19 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jdk
# Thu, 20 Aug 2026 18:07:19 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:550025ea03d905791ce05972f1894ca53188ff6d49ea1e4297bfe3676c4a0653`  
		Last Modified: Thu, 20 Aug 2026 18:07:39 GMT  
		Size: 219.8 MB (219831309 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-alpine` - unknown; unknown

```console
$ docker pull sapmachine@sha256:a3a6a10daaa680db7350e76198f9577f17d3d47d095e8b420b8a10b5ecc97e1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **523.5 KB (523505 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cb43807443f69ba9ea06d8c6cdf65c184a6f511e17e67a708d3b3aed55978efb`

```dockerfile
```

-	Layers:
	-	`sha256:053ce5f7834f6b280b781911b7c0e29a534e7a3fcd4e8c9adb2af537e0647998`  
		Last Modified: Thu, 20 Aug 2026 18:07:35 GMT  
		Size: 514.6 KB (514581 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:08a8c3aa9ac61a42633f74f9dde59b9254e5f8b1112a987f15a327dbb9142cce`  
		Last Modified: Thu, 20 Aug 2026 18:07:35 GMT  
		Size: 8.9 KB (8924 bytes)  
		MIME: application/vnd.in-toto+json
