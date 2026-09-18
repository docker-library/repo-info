## `amazoncorretto:11-alpine3.21-jdk`

```console
$ docker pull amazoncorretto@sha256:bca4f72e7d95a3bee727e5b74a06dc74410527cc4e5d884e95790e68eb696891
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.21-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:a23daaa2215688be2e9fea27032a5b1c5d9cc1b8bf468f0a52738657aab2091a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147570567 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c1fb2c72d00ad64930b55d521203bfd144332ca718773b73a507fb8b0ba44745`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:22 GMT
ADD alpine-minirootfs-3.21.8-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:22 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:34:48 GMT
ARG version=11.0.32.10.1
# Thu, 17 Sep 2026 21:34:48 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:34:48 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:34:48 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:34:48 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:16333ee0c00fc65e025a2a4f839703ad37a74728832977fbdf080984de1b8e5a`  
		Last Modified: Thu, 17 Sep 2026 20:38:28 GMT  
		Size: 3.6 MB (3626020 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c388a8c78db2d5568f18835585fa156414a347cfeb491e8e2657eeaf1353ccf2`  
		Last Modified: Thu, 17 Sep 2026 21:35:04 GMT  
		Size: 143.9 MB (143944547 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:ce840ce9ebfea6059be66c64ea0d7baa5eccb566c7d84dbaed99460e08fa97eb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.7 KB (602748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db39e2fc7938c8ed213601ef1a5300d472a782f0bc4de3d6e6c890f6811a2093`

```dockerfile
```

-	Layers:
	-	`sha256:9f5ea6160914edaf865f22fa5a0fdeb791331b73cc9335bded43a1eece903169`  
		Last Modified: Thu, 17 Sep 2026 21:35:01 GMT  
		Size: 593.4 KB (593369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:6b2098964089e79ea59207b426f73be3714bffc0cf81c6cdc98fa56679755961`  
		Last Modified: Thu, 17 Sep 2026 21:35:01 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.21-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:55cc0624a576e8b0306253e61c92ee8405524be23a1cee7e70ce93b9ea4fb648
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.3 MB (146299175 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:37ca0b3814f2145b7bd61df9dca8b7f3d3013f3d61f0bc7acff825ddcd6c2e3a`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:38:00 GMT
ADD alpine-minirootfs-3.21.8-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:38:00 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:35:56 GMT
ARG version=11.0.32.10.1
# Thu, 17 Sep 2026 21:35:56 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:35:56 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:35:56 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:35:56 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:248d4d6535e8932d2b51acdf49a4ca8d87629cd408a02bd59788b4c31e3d0c28`  
		Last Modified: Thu, 17 Sep 2026 20:38:06 GMT  
		Size: 4.0 MB (3974501 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4839319b92d800881ad46e503cdc2bd7cac190a29c3c6af0b6cf97a8b43ff56f`  
		Last Modified: Thu, 17 Sep 2026 21:36:14 GMT  
		Size: 142.3 MB (142324674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.21-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:c686a7f9fb792a8c04fa2aba1fe58340dc7695e92fc07bd4b65ceef04638e26c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.9 KB (602908 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:75cd2433265597d49cca7455d691f3baee9fc20155dc6f6b2227dc42b4af32bc`

```dockerfile
```

-	Layers:
	-	`sha256:9a3886dba730b19e566a8683ddbe0f1275e695d221426d3d45aaad5f1f2289cc`  
		Last Modified: Thu, 17 Sep 2026 21:36:10 GMT  
		Size: 593.4 KB (593425 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fb8990f8b1c00e8cfb5bccd50cda8cbc868d5098af256fa983c9403711b2c388`  
		Last Modified: Thu, 17 Sep 2026 21:36:10 GMT  
		Size: 9.5 KB (9483 bytes)  
		MIME: application/vnd.in-toto+json
