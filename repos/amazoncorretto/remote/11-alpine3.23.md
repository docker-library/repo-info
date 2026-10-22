## `amazoncorretto:11-alpine3.23`

```console
$ docker pull amazoncorretto@sha256:12f076d2ac096ea958d4b5ade85e3dbe4c2729180107f9561ba35d2c1637ff23
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.23` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ab1c7c7830a106c4a78ddfd33866bcf86ea72af590b7c876f03d4ea9dfc298b4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.8 MB (147800132 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:02cd9ba141dce0ef90e07561883cb0d50ecf77c14b61a54c41ef1bf49227142e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:15:03 GMT
ARG version=11.0.32.12.1
# Wed, 21 Oct 2026 21:15:03 GMT
# ARGS: version=11.0.32.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:15:03 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:15:03 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:15:03 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb532d5e0a84b249b3e293eb959dcb2e2e8c97d38efa562077c9f769ec13653`  
		Last Modified: Wed, 21 Oct 2026 21:15:20 GMT  
		Size: 143.9 MB (143947905 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4888230e26669eb76b36a602b25aa57cbefee64ceac08a110a9a61ad0fc48bc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **597.0 KB (597033 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:86eb832f0102730748b92688067193add8e25cd4ea3c7b8b995ae7b1d011b0bc`

```dockerfile
```

-	Layers:
	-	`sha256:d62f723a726ec698880670758e9d104def0caf5e46161004d705c09787c82059`  
		Last Modified: Wed, 21 Oct 2026 21:15:17 GMT  
		Size: 587.7 KB (587655 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:47c5fbb79370c763e293879acc630fa2b0df7fde2bddcb2421c5527b58ced2bf`  
		Last Modified: Wed, 21 Oct 2026 21:15:16 GMT  
		Size: 9.4 KB (9378 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:42ab20255aa1ca47f211ed413bb1a61d6194c3ebdbdc23f4970168dcc51e8c03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.5 MB (146522735 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9a0d431573c6428c6a9539cfa61069c300163ed01660d01d1d733a2b0c136645`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:15:36 GMT
ARG version=11.0.32.12.1
# Wed, 21 Oct 2026 21:15:36 GMT
# ARGS: version=11.0.32.12.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Wed, 21 Oct 2026 21:15:36 GMT
ENV LANG=C.UTF-8
# Wed, 21 Oct 2026 21:15:36 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Wed, 21 Oct 2026 21:15:36 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d37bd9390d1700832f7f48e95fa02a85e13863e603aeca439410f24a4818b835`  
		Last Modified: Wed, 21 Oct 2026 21:15:53 GMT  
		Size: 142.3 MB (142333241 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:d0fcf1bc376bbffb20d545a202d6ae84a6605396b9be01c19e8b2e9d0f80ad3e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **596.5 KB (596544 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89aac9e6c7aac5016cf887c9bf071a31b96868710478eee4fabef438dc603634`

```dockerfile
```

-	Layers:
	-	`sha256:5359c61bbe3fbbfcb5f53b4b57a275765d3dbd438d2657c39a745407d02b9d4e`  
		Last Modified: Wed, 21 Oct 2026 21:15:50 GMT  
		Size: 587.1 KB (587061 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5aab7e0de8c9847a8c114fc17b8f36fe659b3bd5f47592f8595345468cbb42ff`  
		Last Modified: Wed, 21 Oct 2026 21:15:50 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
