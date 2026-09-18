## `amazoncorretto:11-alpine3.22-full`

```console
$ docker pull amazoncorretto@sha256:527c81e56c8f024a62d7e46a2edb14d63fb1b852df0ca5ae80b1fda865b7ae96
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.22-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:b2657fe358f50c6567713eeff8e7943bb3d3891d96e3028e16ce3d61a193a6ae
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.7 MB (147741139 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:197fb2e1b1d8b34251a075a3438e7f1dbab3a1ba64238ea5b9f463ca7620e7b7`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:21 GMT
ADD alpine-minirootfs-3.22.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:21 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:19:26 GMT
ARG version=11.0.32.10.1
# Thu, 20 Aug 2026 17:19:26 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:19:26 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:19:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:19:26 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:f7ee36c9aa34bbb665f975c76e5c0d1607f0674b94c84cfb0061f87006ea5d10`  
		Last Modified: Mon, 22 Jun 2026 09:11:44 GMT  
		Size: 3.8 MB (3787595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cc1164393af677681f7e35ede5a2aabf447c04bb54a224a77936a7f5306bf8a`  
		Last Modified: Thu, 20 Aug 2026 17:19:43 GMT  
		Size: 144.0 MB (143953544 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:6c87c054aca304e96b47da60d5520384ab8e650b9526cf8a8e448c2e88fe043a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.3 KB (598318 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc4161b15fa8e3cc17a1e9a7520cd933793b0758e1cb08b5076c4ea26031de82`

```dockerfile
```

-	Layers:
	-	`sha256:ccbd680a86f931d1a1e3bbab8b0fe0af1d418f899e8a957f720440d4655120b5`  
		Last Modified: Thu, 20 Aug 2026 17:19:39 GMT  
		Size: 588.9 KB (588939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9363491e1d3c34d3bc15485f10aede6c912e24ff45f1eb0dfd437e4e03c2847d`  
		Last Modified: Thu, 20 Aug 2026 17:19:39 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.22-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:d11cb2e352d22eb8c17a479c577926c2c32a6d289cc5377012237429b566b188
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.5 MB (146454052 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8a7e7b19095e62548efeffabb99991e6efe51d281fa05e9f1d44ed9434f73245`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:30 GMT
ADD alpine-minirootfs-3.22.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:30 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:36:06 GMT
ARG version=11.0.32.10.1
# Thu, 17 Sep 2026 21:36:06 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:36:06 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:36:06 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:36:06 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:16fc4f52163f03cd2189c3d6a4b3f28a605cfb7919af64b3da4562cca69d2306`  
		Last Modified: Thu, 17 Sep 2026 20:37:36 GMT  
		Size: 4.1 MB (4123084 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:348358b8dfdfd5aea7bca54d24a25959ebebd10fabf06c64b771c99cb9353055`  
		Last Modified: Thu, 17 Sep 2026 21:36:24 GMT  
		Size: 142.3 MB (142330968 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.22-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:655ccd32101a2aaff30526c4505ded13515f9728d70d127b9dcaa19757210e2a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **598.5 KB (598478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1e7a853beaebb720d3b3fea559b7f168399debdd8cdcf7b27543be4f5bfe59b`

```dockerfile
```

-	Layers:
	-	`sha256:8e8874b2a19cf58162a09eb91d0b89305df5c8498a155ca7768d50ea80cadb04`  
		Last Modified: Thu, 17 Sep 2026 21:36:21 GMT  
		Size: 589.0 KB (588995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:31e45e65a9ccefba6048cf2050a2519819e3ef9f78e2db8f8b8ae9e741c87b67`  
		Last Modified: Thu, 17 Sep 2026 21:36:21 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
