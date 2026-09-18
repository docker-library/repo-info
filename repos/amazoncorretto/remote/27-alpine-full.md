## `amazoncorretto:27-alpine-full`

```console
$ docker pull amazoncorretto@sha256:6fba5f9f2f4730e2d3e81055ce0378a8587c12a48611ee545c5db04c3a28f889
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:27-alpine-full` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:511ec0b9a7c85368165638108dee2cd247844faa1265f341756d0697342711a8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **187.2 MB (187246565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3327346aa55008ba7ba2d95247d15cec5c46705bc685bc7e8ffa0c84d3b8db57`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:20 GMT
ADD alpine-minirootfs-3.24.2-x86_64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:20 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:37:40 GMT
ARG version=27.0.0.35.1
# Thu, 17 Sep 2026 21:37:40 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:37:40 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:37:40 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:37:40 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:e2de96513ba9eb53b431787ec8a65cdde380ac4772a3e4c4b714dcfde2a102b5`  
		Last Modified: Thu, 17 Sep 2026 20:37:26 GMT  
		Size: 3.8 MB (3849738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:373d2a6b07bef8d8f0594f36fd5d37431672733e3c7783135398ca296e05c9d3`  
		Last Modified: Thu, 17 Sep 2026 21:37:59 GMT  
		Size: 183.4 MB (183396827 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:b183c24c36a08b3397ce933352e05852fb21496c18aa743c66728ec0cbff5630
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **589.1 KB (589113 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6e6feac64a518f0ac95841282fab43d9b12341c628c21f20dfe496094da32a19`

```dockerfile
```

-	Layers:
	-	`sha256:fe51dea2869884b2bc17026b882d6f707b864d5f31bbaa4873d2d1950c7696be`  
		Last Modified: Thu, 17 Sep 2026 21:37:55 GMT  
		Size: 578.4 KB (578435 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:42703ee02b0ba8bf8c781e89aee81bfdb6066ae7ed3256a7a74a2dd9d1755544`  
		Last Modified: Thu, 17 Sep 2026 21:37:55 GMT  
		Size: 10.7 KB (10678 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:27-alpine-full` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:6e8a8f1366de65504ddce99637ada57b3278f70e3d15e29304d8ff295a61f9ab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **185.2 MB (185204094 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ba26f21c761cc2108f18e7c0def4b5d9b72ac1cfbdc477f995012bc391def1bb`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:05 GMT
ADD alpine-minirootfs-3.24.2-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:05 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:38:50 GMT
ARG version=27.0.0.35.1
# Thu, 17 Sep 2026 21:38:50 GMT
# ARGS: version=27.0.0.35.1
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-27=$version-r0 &&     rm -rf /usr/lib/jvm/java-27-amazon-corretto/lib/src.zip # buildkit
# Thu, 17 Sep 2026 21:38:50 GMT
ENV LANG=C.UTF-8
# Thu, 17 Sep 2026 21:38:50 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Thu, 17 Sep 2026 21:38:50 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:a9986cd6f37dbddae7862a6d4be71683472e7c2ea708e87db14f8a6393c00f00`  
		Last Modified: Thu, 17 Sep 2026 20:37:10 GMT  
		Size: 4.2 MB (4187659 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:050f6011813520e43863b3a7cb3704eb0b7332640d0a0c0cad90c96f9fa24ff0`  
		Last Modified: Thu, 17 Sep 2026 21:39:11 GMT  
		Size: 181.0 MB (181016435 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:27-alpine-full` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:eb210e811a36532bf1abd6614289c5bbaa3a3554dec2a4bf31156bf8ea3dfa47
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **588.1 KB (588079 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e18a566d4f2c5f25b4a89d496b0c01d5c2553114ee5531e5c5efa8442db76c2e`

```dockerfile
```

-	Layers:
	-	`sha256:be16fe814fd498a584c0c474458177b10124e1375374d470a4b15c5891972505`  
		Last Modified: Thu, 17 Sep 2026 21:39:07 GMT  
		Size: 577.2 KB (577249 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dbdca37c00dbe5022372c2b0731213e5ded0943cb04aab95f2d51a5aa1d8654b`  
		Last Modified: Thu, 17 Sep 2026 21:39:07 GMT  
		Size: 10.8 KB (10830 bytes)  
		MIME: application/vnd.in-toto+json
