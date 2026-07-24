## `amazoncorretto:11-alpine3.22-full`

```console
$ docker pull amazoncorretto@sha256:8824ed36caf75acd3c111af8473d54ba6c29cbd6e28652e733f2c29d6c4e2c40
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.22-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:46755926db4c1b215b8d80c68f807cbf64dad7d81a80ed0293cdbfbfe3ada328
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147742562 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7cdf6a94c853143f4aad0516a02e239da54c36a8b820ffa5194c93a2d5ae037`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:11:16 GMT
ARG version=11.0.32.9.1
# Thu, 23 Jul 2026 23:11:16 GMT
# ARGS: version=11.0.32.9.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:11:16 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:11:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:11:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:728c316675b1a9fa11637c6b21ccce76375c96bfcbeda583ac71fb8c3b2086e6`  
		Last Modified: Thu, 23 Jul 2026 23:11:34 GMT  
		Size: 144.0 MB (143954967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:edc0a00c18d7bf8bfd3f649e350508dd1bfce9b0b16d0f5e991ba5a1255eb93f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.3 KB (598307 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ca3735cbf20795345c8afa1798ed268ad89da12590e00af5d4eb26c404217cde`

```dockerfile
```

-	Layers:
	-	`sha256:75fdce9cf7395ef84ad2e2c45181d9a2452dd1fbb2d8257ff56167663851b8f8`  
		Last Modified: Thu, 23 Jul 2026 23:11:31 GMT  
		Size: 588.9 KB (588933 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b7c68dcd9b72460396f6978306e75b48fd81121a422263a05f81af3aee57a285`  
		Last Modified: Thu, 23 Jul 2026 23:11:30 GMT  
		Size: 9.4 KB (9374 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.22-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:9c0cf2269a52f83305734bf515b3f724ebf638a69e426227b58d71f07aa2dc73
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.4 MB (146444267 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d26f7a081fae2e1f7cb4e96a9c040cc04882c4c1669ae30dc641f7331ab4f137`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:11 GMT
ADD alpine-minirootfs-3.22.5-aarch64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:11 GMT
CMD ["/bin/sh"]
# Thu, 23 Jul 2026 23:12:57 GMT
ARG version=11.0.32.9.1
# Thu, 23 Jul 2026 23:12:57 GMT
# ARGS: version=11.0.32.9.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 23 Jul 2026 23:12:57 GMT
ENV LANG=C.UTF-8
# Thu, 23 Jul 2026 23:12:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 23 Jul 2026 23:12:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:738128faa30f570583b0e57efd831e0e6a2a9aacf1be88c8f4c1ef8a5b7033cc`  
		Last Modified: Mon, 22 Jun 2026 09:11:35 GMT  
		Size: 4.1 MB (4120486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d34029740dce97541d2a7605658d735244a9357b0e02fc06e19c785e2099f334`  
		Last Modified: Thu, 23 Jul 2026 23:13:14 GMT  
		Size: 142.3 MB (142323781 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:9be5a53d7fb0a9b0e73bedc982778fd065485d61ffe0a27d8c88052f54db973b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.5 KB (598467 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c87d4169e31d0a336edb4450fc46ca825a2a5b83f41b1a0c307f6478d8a2e6a5`

```dockerfile
```

-	Layers:
	-	`sha256:a8e0fd5f061691cc02488441e43d390d3839c791047a0d7971a817f18d1d1729`  
		Last Modified: Thu, 23 Jul 2026 23:13:10 GMT  
		Size: 589.0 KB (588989 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6aece58985db03d806165aae7d44230a48eeaad87b120fac540b9cf45274f611`  
		Last Modified: Thu, 23 Jul 2026 23:13:10 GMT  
		Size: 9.5 KB (9478 bytes)  
		MIME: application/vnd.in-toto+json
