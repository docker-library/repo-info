## `amazoncorretto:11-alpine3.24-full`

```console
$ docker pull amazoncorretto@sha256:2ce55a354b806ab461f0ce01d25947e6d88b7fd56c404af4c112b8a187d54ff2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.24-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:a033959823dc5514045735a4694c45dca7ff7f323e163f119086ffba8c22e082
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147827330 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba2b0cc20f9d04e7b01807a0402c47d7976049c67c61e10c59447321c76250f5`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 22:56:16 GMT
ARG version=11.0.32.12.1
# Wed, 21 Oct 2026 22:56:16 GMT
# ARGS: version=11.0.32.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 22:56:16 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 22:56:16 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 22:56:16 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:48db641a0eff56b693fa1dc636aa63253d3ea759abe99156838353d41dcc2b7f`  
		Last Modified: Wed, 21 Oct 2026 22:56:33 GMT  
		Size: 144.0 MB (143974221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.24-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:bdf0b8de73e24963a8643705ca8076203d0dcadf55f81b33d05ea1090f847be6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.7 KB (599720 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f129ddfec1b53659118636fd5059a53533787c8875698e749ca26cc1064d32f`

```dockerfile
```

-	Layers:
	-	`sha256:167effa384ee80d536b870150db728e46984c77778a51e62a61137096ce55a24`  
		Last Modified: Wed, 21 Oct 2026 22:56:30 GMT  
		Size: 589.0 KB (589034 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:30c4f5610e5930ab204aa22027c41420865f446000e3d1b43db5ea38f658c611`  
		Last Modified: Wed, 21 Oct 2026 22:56:30 GMT  
		Size: 10.7 KB (10686 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.24-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:fef3156ef92419368bffcc3bce4c57f6c9ce7a7a1d07f3fa1bf10ad5158a3cf1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.5 MB (146534234 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d9ca0b7e5d6405af4e61d456b56d11bddda05c29ce2ffe8d45b825ba8fb1e65`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Mon, 28 Sep 2026 18:02:57 GMT
ARG version=11.0.32.12.1
# Mon, 28 Sep 2026 18:02:57 GMT
# ARGS: version=11.0.32.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Mon, 28 Sep 2026 18:02:57 GMT
ENV LANG=C.UTF-8
# Mon, 28 Sep 2026 18:02:57 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Mon, 28 Sep 2026 18:02:57 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d7458ae3ef813635d38c802fedf1cc6a5346d19f30bcfa1f6589949fd3c32021`  
		Last Modified: Mon, 28 Sep 2026 18:03:14 GMT  
		Size: 142.3 MB (142346575 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.24-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:20f4e614e50517a8ec5a716b861c39fc88b6da1280d698d2944014e937dd8a11
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.3 KB (599327 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bb73def8c0585ae9d640ebb4cf30711d2a30cb83ceb7026545d84a42e02e509a`

```dockerfile
```

-	Layers:
	-	`sha256:bc97e0ce9c7d564f35711b441396ff54d94c2d624c8dc79ee8b647a0952f739a`  
		Last Modified: Mon, 28 Sep 2026 18:03:11 GMT  
		Size: 588.5 KB (588488 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6d7456bf6356a510365614c82382616b7521003f0c4d7d70c43f8334dd0984c0`  
		Last Modified: Mon, 28 Sep 2026 18:03:11 GMT  
		Size: 10.8 KB (10839 bytes)  
		MIME: application/vnd.in-toto+json
