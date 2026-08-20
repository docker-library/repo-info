## `sapmachine:jre-alpine-3.23`

```console
$ docker pull sapmachine@sha256:7e786a17a18e28b1877f1cf6b3a92c4fa54e6ac9af75273629513838f20160af
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:jre-alpine-3.23` - linux; amd64

```console
$ docker pull sapmachine@sha256:b5ddca1b9a58546b3f3b3ea48c7e805f405d4e837b2d0bede3fd4f4fd3283fa4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **65.5 MB (65474483 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c459e47b377d4f4c3b00683e7c7c30aa922aa585d16d2f147ccfe5e1646d9ad4`
-	Default Command: `["sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 18:04:59 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-26-jre=26.0.2.1-r0 # buildkit
# Thu, 20 Aug 2026 18:04:59 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-26-sapmachine-jre
# Thu, 20 Aug 2026 18:04:59 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38662637a2adf4489315ef1db5e1a5f3293c81ac8ccc875e8378247920624c88`  
		Last Modified: Thu, 20 Aug 2026 18:05:12 GMT  
		Size: 61.6 MB (61630062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jre-alpine-3.23` - unknown; unknown

```console
$ docker pull sapmachine@sha256:33f78919e3097a17bed93114349fd2b1c9cb5d3ee392e848604807eb4867ce66
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **440.1 KB (440109 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f02af1ff664772725b37580533ac51fae35bfe0ac3204bef1957a9f1bf5a25f8`

```dockerfile
```

-	Layers:
	-	`sha256:fc80d0bc28681037c2b9fc1e6a8d8022598a48ee2e81bc2eacf2a02cf435d310`  
		Last Modified: Thu, 20 Aug 2026 18:05:10 GMT  
		Size: 431.9 KB (431852 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c5272f4e44c585993a1eeb308c4340742202f5a5cd9323cf6a3376d2d837f59d`  
		Last Modified: Thu, 20 Aug 2026 18:05:10 GMT  
		Size: 8.3 KB (8257 bytes)  
		MIME: application/vnd.in-toto+json
