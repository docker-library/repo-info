## `amazoncorretto:17-al2-jdk`

```console
$ docker pull amazoncorretto@sha256:76f16bd6aa35a961cafe403fde62a60e1bbda819afc89b8acb806629ef74e73d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:17-al2-jdk` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:d321864bf35484729e4c0abe7eb39fb698296b269cbe8f45fe16f5c4e2bdb61f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.5 MB (215507206 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:db99ba50629f905636a3c0a8358abed4a0f099adfdea9e819cfe6a08b28aa8a9`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:58 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:58 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:09:44 GMT
ARG version=17.0.20.12-1
# Fri, 23 Oct 2026 01:09:44 GMT
# ARGS: version=17.0.20.12-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Fri, 23 Oct 2026 01:09:44 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:09:44 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:9653aa1582ef32674aa011f26c881e60e6136564952476129f41b0f5fee0c8ae`  
		Last Modified: Fri, 23 Oct 2026 00:42:11 GMT  
		Size: 63.0 MB (62973900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a7582c27347a3386b72f03a852250128dbbc6f90da916b4e6a9ab2ddce2efac`  
		Last Modified: Fri, 23 Oct 2026 01:10:04 GMT  
		Size: 152.5 MB (152533306 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:4fdac94b3f8be235d56e6978b21528b6999798849c96aa0d1299022df4dbc9f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5547244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c2326ac82abc55666f99e519430505ecafaac1e6f405348e232309a184f2a513`

```dockerfile
```

-	Layers:
	-	`sha256:82119f33ee729deac86c3004b6a26eba15713c6f6ad5f4f529533c6272c95358`  
		Last Modified: Fri, 23 Oct 2026 01:10:00 GMT  
		Size: 5.5 MB (5536339 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f95ad2387cfd11bc9ad353bd500ff62e2a726f7d650edd2bba49a6411af5c54c`  
		Last Modified: Fri, 23 Oct 2026 01:10:00 GMT  
		Size: 10.9 KB (10905 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:17-al2-jdk` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:3797a70473201c22c69ef44e2d73b7d2ea539f8e5feaca5b95c3d12b23b5bd6e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **216.1 MB (216087368 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7109e1a093a7054f8e2120e4cf7004364f874629280df69aeea5771cb8630c45`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:41 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:41 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:09:46 GMT
ARG version=17.0.20.12-1
# Fri, 23 Oct 2026 01:09:46 GMT
# ARGS: version=17.0.20.12-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-17-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-17-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Fri, 23 Oct 2026 01:09:46 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:09:46 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-17-amazon-corretto
```

-	Layers:
	-	`sha256:90a41cb984a9307d13eb248c95fd13ac0a0631a9e189ff342b8a62cd0d8a0d7d`  
		Last Modified: Fri, 23 Oct 2026 00:41:56 GMT  
		Size: 64.8 MB (64835719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6999eed7ce81ca53a24c4da491ecb6a0c5e8cf841879289384d083351ea54af5`  
		Last Modified: Fri, 23 Oct 2026 01:10:07 GMT  
		Size: 151.3 MB (151251649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:17-al2-jdk` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:7d406074150a8bd878724aaf1b9229bcb000c86720fe1c5731c5b7fe9c094242
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5546061 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:054c6291871a9a72c30ecc97b266bef621b64cce98d384a1723422b741c3f11e`

```dockerfile
```

-	Layers:
	-	`sha256:2b89770bf164cfe82e01d9c9bb2a648d20c50d703248ef2da447ca336e95a1f3`  
		Last Modified: Fri, 23 Oct 2026 01:10:04 GMT  
		Size: 5.5 MB (5535016 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:63ee382c44fc2228c81be4e7bec10277bb046ef4d014817b7e40e391386ed4ba`  
		Last Modified: Fri, 23 Oct 2026 01:10:04 GMT  
		Size: 11.0 KB (11045 bytes)  
		MIME: application/vnd.in-toto+json
