## `amazoncorretto:8-alpine3.24-jdk`

```console
$ docker pull amazoncorretto@sha256:88e44e22ee7470543f63ea9736d406dcd1aa2df9576535d1f10e1fe84d3f4ded
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:8-alpine3.24-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:882f9d91a4979ffb20e8a233a30efb0a7d780547ca5dab0d213e41acef45181a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.7 MB (104676833 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ff9e293a0215b92a1a95ce8d2955192dd1d4ff3fdb96deaf3d1b566972c105c`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:36:14 GMT
ARG version=8.504.04.1
# Mon, 05 Oct 2026 21:36:14 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Mon, 05 Oct 2026 21:36:14 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:36:14 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 05 Oct 2026 21:36:14 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6888612cf795f22c8c2807b8b6c5a6e522777db93703cd3204696d1a106eced1`  
		Last Modified: Mon, 05 Oct 2026 21:36:27 GMT  
		Size: 100.8 MB (100827095 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.24-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b417f7d461ad3c38ed58a1ceb6690c5edb91b51aa6a2a7257e04d59378ea61a3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.4 KB (258413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bbc3ec335c856d67488b00f02de3571282c680ad9f6b643016eb09f66d5a3fa5`

```dockerfile
```

-	Layers:
	-	`sha256:1d2343d2b9ac7b576568d0f801283f124ea713a05283815b6f27c9213abc40d6`  
		Last Modified: Mon, 05 Oct 2026 21:36:24 GMT  
		Size: 247.8 KB (247760 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b961c2761f567c8b8f5ace1b885ece1ecf52bc3d174277ac3b695f01e8b3d6c`  
		Last Modified: Mon, 05 Oct 2026 21:36:24 GMT  
		Size: 10.7 KB (10653 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:8-alpine3.24-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:73e8dbbfb4efca7bf49a246713fb41e91f29454101063ca9ce6c33a5caf43d8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **104.9 MB (104850434 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4ef9107d5a53e38e3828749de320793528b92f0dd15b60a68319b49fbc1161da`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 05 Oct 2026 21:41:57 GMT
ARG version=8.504.04.1
# Mon, 05 Oct 2026 21:41:57 GMT
# ARGS: version=8.504.04.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-8=$version-r0 &&     rm -rf /usr/lib/jvm/java-8-amazon-corretto/lib/src.zip # buildkit
# Mon, 05 Oct 2026 21:41:57 GMT
ENV LANG=C.UTF-8
# Mon, 05 Oct 2026 21:41:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 05 Oct 2026 21:41:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6fae2bae36c83d787376b60e89e9b745bf189433f066364cc1237bca0b355f4`  
		Last Modified: Mon, 05 Oct 2026 21:42:11 GMT  
		Size: 100.7 MB (100662775 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:8-alpine3.24-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:dc58791d9635427f3ef604482173746734eff04dcd15caa1c3e2b9a34a335dfd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **258.1 KB (258094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:853ae122cf504df727089936337b4ae04c039154cbff20039b90e9b39c2cf2fc`

```dockerfile
```

-	Layers:
	-	`sha256:1ef2e908e857c6d8bc5f584e19a02d8946736184541676c39ce3e01e815be172`  
		Last Modified: Mon, 05 Oct 2026 21:42:08 GMT  
		Size: 247.3 KB (247290 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:334e3c5d2f5e3ecd661adc9ae01b0fa646f2eb3759b061fab27526633f126fd9`  
		Last Modified: Mon, 05 Oct 2026 21:42:08 GMT  
		Size: 10.8 KB (10804 bytes)  
		MIME: application/vnd.in-toto+json
