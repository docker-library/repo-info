## `amazoncorretto:21-al2-generic`

```console
$ docker pull amazoncorretto@sha256:09a1f60dceaf53d47d9e10a10e5c83f24a41235a6ccad7a2f63b81bea2cef733
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:21-al2-generic` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:9a347ae1dc311190d94bf681cfeacac3475a28fff57f36d4e53dda328ac3b7b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.6 MB (228604769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bce27746429867751afe3fab8d0fba2102b7871d24d5141f79aa1deeedc43f2e`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:58 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:58 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:10:25 GMT
ARG version=21.0.12.12-1
# Fri, 23 Oct 2026 01:10:25 GMT
# ARGS: version=21.0.12.12-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Fri, 23 Oct 2026 01:10:25 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:10:25 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:9653aa1582ef32674aa011f26c881e60e6136564952476129f41b0f5fee0c8ae`  
		Last Modified: Fri, 23 Oct 2026 00:42:11 GMT  
		Size: 63.0 MB (62973900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c1bcea8b02ee9537ccbf6812428243388da134bc55da0bae3e22b52dc5b3954`  
		Last Modified: Fri, 23 Oct 2026 01:10:45 GMT  
		Size: 165.6 MB (165630869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:46b276817f3bf8dc3b8e452186c89f4638a4dc93b7df4fac87e3618890b8d499
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5547147 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:407b2746641e74dea75cb40edd895014390d3b76317dba61e390452608111a86`

```dockerfile
```

-	Layers:
	-	`sha256:af5bf18d9b99a63c1d39b345a65286e5d9183607e335161d94fb5e590d0e8b46`  
		Last Modified: Fri, 23 Oct 2026 01:10:42 GMT  
		Size: 5.5 MB (5536242 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ddc4f87e3e93f4fe7738ef6816995724531f67d200dcb0ba0c7a1b5463c420ba`  
		Last Modified: Fri, 23 Oct 2026 01:10:41 GMT  
		Size: 10.9 KB (10905 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:21-al2-generic` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:5bd9038294cca948aeccbcd1c5bcaa3c83337576e75b1e9ba787e6b71e4a1da2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **228.7 MB (228701862 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b776e380907aeaa91e061c060d8f25448979d1c7cc8c082e797c1a354830ac9c`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:41 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:41 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 01:10:26 GMT
ARG version=21.0.12.12-1
# Fri, 23 Oct 2026 01:10:26 GMT
# ARGS: version=21.0.12.12-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-21-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-21-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Fri, 23 Oct 2026 01:10:26 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 01:10:26 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-21-amazon-corretto
```

-	Layers:
	-	`sha256:90a41cb984a9307d13eb248c95fd13ac0a0631a9e189ff342b8a62cd0d8a0d7d`  
		Last Modified: Fri, 23 Oct 2026 00:41:56 GMT  
		Size: 64.8 MB (64835719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:99126219ee321969dab0f1a5adcfefc361a36a036204e8262569ea4ca7ccc31f`  
		Last Modified: Fri, 23 Oct 2026 01:10:51 GMT  
		Size: 163.9 MB (163866143 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:21-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:52318f2a85c17388016dbc2c4eaf645eff0aa0438b9e747d5a61c2e81069c197
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.5 MB (5545964 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:618dee38e16bbe5bed9011686ad8cc3c75f95aa3722fd15ec0e3d7cb39c2ab63`

```dockerfile
```

-	Layers:
	-	`sha256:911fc34ebcb7fd3dbd1f9bd236d2bd0f3d388ba9a5a8fcf8dac170483fc61570`  
		Last Modified: Fri, 23 Oct 2026 01:10:45 GMT  
		Size: 5.5 MB (5534919 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:57b99d3914a0e7e141cfb12e4418efc098ab474c3c0dafee1777dff2022668f7`  
		Last Modified: Fri, 23 Oct 2026 01:10:45 GMT  
		Size: 11.0 KB (11045 bytes)  
		MIME: application/vnd.in-toto+json
