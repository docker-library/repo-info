## `sapmachine:21-jre-alpine-3.24`

```console
$ docker pull sapmachine@sha256:d6148c1dc15c784c52786b625cb87b89518ce0dc86575e62d08ec77dce4a409d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 2
	-	linux; amd64
	-	unknown; unknown

### `sapmachine:21-jre-alpine-3.24` - linux; amd64

```console
$ docker pull sapmachine@sha256:2ca31aeaacc8d534757c71434034f2efd88207bae167d9d96d6718dcef649fb5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **67.0 MB (67033242 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8849c95a49665c62996904f2a142d060470ecd1d368091e62ac3bd923f94e7cf`
-	Default Command: `["sh"]`

```dockerfile
# Tue, 16 Jun 2026 00:01:29 GMT
ADD alpine-minirootfs-3.24.1-x86_64.tar.gz / # buildkit
# Tue, 16 Jun 2026 00:01:29 GMT
CMD ["/bin/sh"]
# Wed, 16 Sep 2026 16:36:34 GMT
RUN wget -qO /etc/apk/keys/sapmachine-apk.rsa.pub https://dist.sapmachine.io/alpine/sapmachine-apk.rsa.pub &&     echo "4444e47cabf35695f9406692848de191d3b7cbd47dcdc1ffb62f4f70aea06e89 /etc/apk/keys/sapmachine-apk.rsa.pub" | sha256sum -c - &&     echo "https://dist.sapmachine.io/alpine" >> /etc/apk/repositories &&     apk add sapmachine-21-jre=21.0.12.1-r0 # buildkit
# Wed, 16 Sep 2026 16:36:34 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-sapmachine-jre
# Wed, 16 Sep 2026 16:36:34 GMT
CMD ["sh"]
```

-	Layers:
	-	`sha256:55afa1ecc21d2bb5e5045f32dafee56272ffd89860bac26f6c32123439af26a4`  
		Last Modified: Sun, 14 Jun 2026 06:44:06 GMT  
		Size: 3.8 MB (3846391 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:76d4eecd23c083fba7734b40363ea6008e4cc15c9962ed645b9bf273e09a2106`  
		Last Modified: Wed, 16 Sep 2026 16:36:48 GMT  
		Size: 63.2 MB (63186851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `sapmachine:21-jre-alpine-3.24` - unknown; unknown

```console
$ docker pull sapmachine@sha256:cca49c9f8e89a93cfb0f788c0e4355547d912bd665c6674c3b0a4284733fd277
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **435.0 KB (434971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e917fabffa21fd5b6a7820e17f207bd300150e81d5d2c45e129134b5423808f9`

```dockerfile
```

-	Layers:
	-	`sha256:75fa57258d9038f573ff72fcb2009a6c9a0376b8538b6f7ca2d3e8ceb2593975`  
		Last Modified: Wed, 16 Sep 2026 16:36:46 GMT  
		Size: 428.0 KB (428001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:248dd11573571a59d943d525f66c206b8cbf4f3317aeaa5a57a5eba7a8fe8b7c`  
		Last Modified: Wed, 16 Sep 2026 16:36:46 GMT  
		Size: 7.0 KB (6970 bytes)  
		MIME: application/vnd.in-toto+json
