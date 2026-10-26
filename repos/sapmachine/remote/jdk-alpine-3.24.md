## `sapmachine:jdk-alpine-3.24`

```console
$ docker pull sapmachine@sha256:c9930baad4a62f691bed53d09a259c02167100a7aefdb0dc24379926cfadc768
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:jdk-alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:ff188522b834482de395727d5fe81ba22713d6b12cc3eb857062f93a00eeb9a7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **143.5 MB (143455558 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:913d7a435e67fdcf990643bf90a7c501605699ff4ac33cecb7a06d8fbd72adf3`
-	Default Command: `["jshell"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Mon, 26 Oct 2026 17:49:40 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-27-jdk=27.0.1.0.3-r0 # buildkit
# Mon, 26 Oct 2026 17:49:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-27-sapmachine-jdk
# Mon, 26 Oct 2026 17:49:40 GMT
CMD ["jshell"]
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a1fbc4df86ac5706d6d55524631c4d8d78f98781e8735580eb674596efd456d4`  
		Last Modified: Mon, 26 Oct 2026 17:49:58 GMT  
		Size: 139.6 MB (139602449 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:jdk-alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:3c02dcbf8146d3464da7067451ee02c15e6268072546299516a2379724112468
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **462.5 KB (462528 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e3a6d6d244c3f331cfac6a60ea6a695ffaea3cb0d7f101a487e9ae9c1fb3303b`

```dockerfile
```

-	Layers:
	-	`sha256:76e31e91f475c5cce73531a170c5179afdf1211efcb8109be44fb7838d4891ab`  
		Last Modified: Mon, 26 Oct 2026 17:49:54 GMT  
		Size: 454.2 KB (454247 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d2d4af5f879cc94a2c3ed1dbb15d9ce2cef3333ff74b75d9806db89e2c00c87c`  
		Last Modified: Mon, 26 Oct 2026 17:49:54 GMT  
		Size: 8.3 KB (8281 bytes)  
		MIME: application/vnd.in-toto+json
