## `amazoncorretto:11-alpine3.21-full`

```console
$ docker pull amazoncorretto@sha256:1a41bc31a0ff964dc5aa438ad6dd828f0daac43fd1206b45736d55d16df8f5bf
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.21-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:adf977ea9c3cf4bbe9a64691999252528b415087f86cd403cb9e2e164dda6ecb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.6 MB (147591478 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ec0cf81c5bfaaa5393a1bfec34b6f8302ededc7010b953c4cf4b91286076cf0e`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 16 Apr 2026 23:53:15 GMT
ADD alpine-minirootfs-3.21.7-x86_64.tar.gz / # buildkit
# Thu, 16 Apr 2026 23:53:15 GMT
CMD ["/bin/sh"]
# Thu, 20 Aug 2026 17:19:21 GMT
ARG version=11.0.32.10.1
# Thu, 20 Aug 2026 17:19:21 GMT
# ARGS: version=11.0.32.10.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Thu, 20 Aug 2026 17:19:21 GMT
ENV LANG=C.UTF-8
# Thu, 20 Aug 2026 17:19:21 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 20 Aug 2026 17:19:21 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:897d797d2723cf0e318402f4d6f37d51b011517e5cf09246b22155f0fa90dc81`  
		Last Modified: Thu, 16 Apr 2026 05:32:55 GMT  
		Size: 3.6 MB (3646875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6adb0463e5d5a17928dc7e89edca1f26129001069dc9c98b1f3d82819992ebde`  
		Last Modified: Thu, 20 Aug 2026 17:19:38 GMT  
		Size: 143.9 MB (143944603 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.21-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:793802e5f7ef6d8a2ff061b0f4dbd7474631b765dcf80294f3d72f2f2f84e65e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **602.7 KB (602748 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:235bfa3c602bb8dd05826fbb48076b3f02c0cfcbc5b8530d70dad3e672788f00`

```dockerfile
```

-	Layers:
	-	`sha256:4654cac95d51302f09b95449919c6897dc2514004da18b74d5c1770a07381823`  
		Last Modified: Thu, 20 Aug 2026 17:19:34 GMT  
		Size: 593.4 KB (593369 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:8a0dd58a82c8941b1278fcbaa452980199edb8da6c040d9c3381889f3727a3f4`  
		Last Modified: Thu, 20 Aug 2026 17:19:34 GMT  
		Size: 9.4 KB (9379 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.21-full` - linux; arm64 variant v8

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

### `amazoncorretto:11-alpine3.21-full` - unknown; unknown

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
