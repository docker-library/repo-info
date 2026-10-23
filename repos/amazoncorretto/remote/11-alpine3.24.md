## `amazoncorretto:11-alpine3.24`

```console
$ docker pull amazoncorretto@sha256:b60fa8d0fd120cbf50df03ff17b4b7770299f96cef67425fb1b0bef8aee906e1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-alpine3.24` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:478665d2bcb148a4b59a20210928f87caf2f528d38b431c0555b5a02d1448f63
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **147.9 MB (147885347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10b04e1ac62247c7b6e35d3e960951a297b568bef80d0159a9226738e7a34d52`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:37:22 GMT
ADD alpine-minirootfs-3.24.3-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:37:22 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:07:51 GMT
ARG version=11.0.33.0.9
# Fri, 23 Oct 2026 18:07:51 GMT
# ARGS: version=11.0.33.0.9
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:07:51 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:51 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:07:51 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:7b229517ed222597277036d94892173207d01a731ab3a88eeb1de2e963a2c788`  
		Last Modified: Wed, 21 Oct 2026 22:37:28 GMT  
		Size: 3.9 MB (3853109 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:04bbc8556780ebefe32aad46f7459ad4cb45cfb8ed2121f2c751c9d265bc0efd`  
		Last Modified: Fri, 23 Oct 2026 18:08:09 GMT  
		Size: 144.0 MB (144032238 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.24` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:5113948294523be53b630a44196c711054ef5ccfb77a1125eb39466d1c552e31
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.7 KB (599709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1efe4927abf3e3da1445ec4426faaff7139a49473c3e4e019633c9f1156d6879`

```dockerfile
```

-	Layers:
	-	`sha256:69d56d498939dc77881a9a6b28a2531304472a7c230bc5c98281cceb93207074`  
		Last Modified: Fri, 23 Oct 2026 18:08:05 GMT  
		Size: 589.0 KB (589028 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4e1aabd8951f3e03f47741a08735d8f324200dbe95ae884a14a14c5ca1ca96d5`  
		Last Modified: Fri, 23 Oct 2026 18:08:05 GMT  
		Size: 10.7 KB (10681 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-alpine3.24` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:7fae23f062cee0e8a6d0911819871b7330fdad65bca3707a87d122f3fd34a563
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **146.6 MB (146590102 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:324b0043fbb054e5c1130f6ae3ee3a238c0b1035a604fd9441b63a7926b59692`
-	Default Command: `["\/bin\/sh"]`

```dockerfile
# Wed, 21 Oct 2026 22:51:39 GMT
ADD alpine-minirootfs-3.24.3-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 22:51:39 GMT
CMD ["/bin/sh"]
# Fri, 23 Oct 2026 18:07:28 GMT
ARG version=11.0.33.0.9
# Fri, 23 Oct 2026 18:07:28 GMT
# ARGS: version=11.0.33.0.9
RUN wget -O /THIRD-PARTY-LICENSES-20200824.tar.gz https://corretto.aws/downloads/resources/licenses/alpine/THIRD-PARTY-LICENSES-20200824.tar.gz &&     echo "82f3e50e71b2aee21321b2b33de372feed5befad6ef2196ddec92311bc09becb  /THIRD-PARTY-LICENSES-20200824.tar.gz" | sha256sum -c - &&     tar x -ovzf THIRD-PARTY-LICENSES-20200824.tar.gz &&     rm -rf THIRD-PARTY-LICENSES-20200824.tar.gz &&     wget -O /etc/apk/keys/amazoncorretto.rsa.pub https://apk.corretto.aws/amazoncorretto.rsa.pub &&     SHA_SUM="6cfdf08be09f32ca298e2d5bd4a359ee2b275765c09b56d514624bf831eafb91" &&     echo "${SHA_SUM}  /etc/apk/keys/amazoncorretto.rsa.pub" | sha256sum -c - &&     echo "https://apk.corretto.aws" >> /etc/apk/repositories &&     apk add --no-cache amazon-corretto-11=$version-r0 &&     rm -rf /usr/lib/jvm/java-11-amazon-corretto/lib/src.zip # buildkit
# Fri, 23 Oct 2026 18:07:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/default-jvm
# Fri, 23 Oct 2026 18:07:28 GMT
ENV PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/lib/jvm/default-jvm/bin
```

-	Layers:
	-	`sha256:d3531b7a4f217bdc3426c57bcff84c170f086f456a39689d4a615c6d026c4be0`  
		Last Modified: Wed, 21 Oct 2026 22:51:44 GMT  
		Size: 4.2 MB (4190488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a72f4f16762f54f3bb7ad0d4fa08ad6beea12e7f827399211ccca74f63e3f953`  
		Last Modified: Fri, 23 Oct 2026 18:07:46 GMT  
		Size: 142.4 MB (142399614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-alpine3.24` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:45f108ba98368ada11a2603b621137e5f3c4f02a4587a390303134ccc8df3fe3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **599.3 KB (599316 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89f26eb807dd6af7778e951658951727d760b969df151f377d7ca53044e02c0a`

```dockerfile
```

-	Layers:
	-	`sha256:3b83d02a96a31314604f31f09002b93e9c64df1826cb955a744bce027c7ec67f`  
		Last Modified: Fri, 23 Oct 2026 18:07:42 GMT  
		Size: 588.5 KB (588482 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:46076e82abf707dac079f140d7719c4b6099f3dd8a5643dfbaafb353bb8cffaa`  
		Last Modified: Fri, 23 Oct 2026 18:07:42 GMT  
		Size: 10.8 KB (10834 bytes)  
		MIME: application/vnd.in-toto+json
