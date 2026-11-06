## `amazoncorretto:17-alpine3.23`

```console
$ docker pull amazoncorretto@sha256:752e5c3c2aa54a15635368f37819f9d29d345e3c6a7d836ce6b19a94112b4c88
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-alpine3.23` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:218cb4d21791c387ef16223bea414883074052463415b792dbc04d7702e8c773
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **153.0 MB (153043224 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4f7f118eea8aaa2f445a99c464aa99cd73483dcab99b68e07f6b93744132bb9a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:51 GMT
ADD alpine-minirootfs-3.23.8-x86_64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:51 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:13:11 GMT
ARG version=17.0.21.0.11
# Thu, 05 Nov 2026 19:13:11 GMT
# ARGS: version=17.0.21.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:13:11 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:13:11 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:13:11 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:74c614fb2c68574f50c582dcc9c18c46618bd6ff2019768190aacfb861ce51d2`  
		Last Modified: Thu, 05 Nov 2026 18:00:58 GMT  
		Size: 3.9 MB (3852589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bb1e4ff4e993e27b9613908b06db45bbcd5580e65ba4b67b82fe03cb4e0ccba`  
		Last Modified: Thu, 05 Nov 2026 19:13:27 GMT  
		Size: 149.2 MB (149190635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:eed12a26cab2dc701ec3134c7b0166fd3c7f788fa8f6d84a78b00d05ad7f79bd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **591.9 KB (591881 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:57f0b941271734945bbc9e5a95f6c1afe15d0097b8366f5c12e3e8d49ca28480`

```dockerfile
```

-	Layers:
	-	`sha256:aef82707273cdd7f56fe76209ac7cb4dda0227934cd6d129d562bee097097913`  
		Last Modified: Thu, 05 Nov 2026 19:13:24 GMT  
		Size: 582.5 KB (582503 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c22706e54942efead8112b4e5ab64e4056164e15753ef9e65c86ecd5130711e7`  
		Last Modified: Thu, 05 Nov 2026 19:13:24 GMT  
		Size: 9.4 KB (9378 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-alpine3.23` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:1849f209af150622bafeaeaa6e0a82719173917985f49ba35f84121737906300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **151.9 MB (151854975 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae79764254b030450c47ebe3a9aa80d955604e7554c2cd4435e5cdeb78c334c6`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 05 Nov 2026 18:00:48 GMT
ADD alpine-minirootfs-3.23.8-aarch64.tar.gz / # buildkit
# Thu, 05 Nov 2026 18:00:48 GMT
CMD ["/bin/sh"]
# Thu, 05 Nov 2026 19:09:00 GMT
ARG version=17.0.21.0.11
# Thu, 05 Nov 2026 19:09:00 GMT
# ARGS: version=17.0.21.0.11
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-17=$version-r0 &&     rm -rf /usr/lib/jvm/java-17-amazon-corretto/lib/src.zip # buildkit
# Thu, 05 Nov 2026 19:09:00 GMT
ENV LANG=C.UTF-8
# Thu, 05 Nov 2026 19:09:00 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 05 Nov 2026 19:09:00 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:0aeae9e5c96856ad8a51ac2a81bf4ce73766c2199992b92fd9302dd7ec7a38de`  
		Last Modified: Thu, 05 Nov 2026 18:00:56 GMT  
		Size: 4.2 MB (4190221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:92f2f3cf3060b8ae6223663cc019d36244a3a2cb798b8ba3ab48cee614d0d067`  
		Last Modified: Thu, 05 Nov 2026 19:09:17 GMT  
		Size: 147.7 MB (147664754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-alpine3.23` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4573f9c685e93318ddb0b5b0cd2214df397c96e615f329a3a1acf5583041f11b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **590.8 KB (590754 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cf3f9d859ac46f69b0b3e69802273bafab7ac892efab15dbd840593ca36c5e1f`

```dockerfile
```

-	Layers:
	-	`sha256:2a0d7b6715fb5d7f086de89f3a9ac74d6278ba9483d27a30422aa4519491f7ea`  
		Last Modified: Thu, 05 Nov 2026 19:09:14 GMT  
		Size: 581.3 KB (581272 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:15cebe5f93ff02199d002d7d4ce786f134a23167c0823595cc662963dd26bbba`  
		Last Modified: Thu, 05 Nov 2026 19:09:14 GMT  
		Size: 9.5 KB (9482 bytes)  
		MIME: application/vnd.in-toto+json
