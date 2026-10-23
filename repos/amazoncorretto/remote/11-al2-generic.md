## `amazoncorretto:11-al2-generic`

```console
$ docker pull amazoncorretto@sha256:91624b87b60cac46c748ac43a0d55088a0d8368fc55bb27cc4f6ef23ff923e62
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `amazoncorretto:11-al2-generic` - linux; amd64

```console
$ docker pull amazoncorretto@sha256:ff767d06da5ca3cab4cc1f67c86f49c6ce11dd44cfd0b726049334b0652d3fb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **211.2 MB (211234028 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:785ff06f2a943f401795f3efaae180645b3828f2d3a66302f960e922fe5c7b84`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:58 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:58 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:07:30 GMT
ARG version=11.0.33.0.9-1
# Fri, 23 Oct 2026 18:07:30 GMT
# ARGS: version=11.0.33.0.9-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-11-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-11-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Fri, 23 Oct 2026 18:07:30 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:30 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:9653aa1582ef32674aa011f26c881e60e6136564952476129f41b0f5fee0c8ae`  
		Last Modified: Fri, 23 Oct 2026 00:42:11 GMT  
		Size: 63.0 MB (62973900 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3332af9f8b08d9d52e61c2737ec8d76ef8e0b7490646c4647233d4fc5c16a5bd`  
		Last Modified: Fri, 23 Oct 2026 18:07:49 GMT  
		Size: 148.3 MB (148260128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:a690c1563dc0b32559a9ef65459a7233e68a824d37518330720e7e86f71ebae1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5553742 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f2d209d237cfd7d06983b40579bf394272c6651948bb738dee10631de889d77a`

```dockerfile
```

-	Layers:
	-	`sha256:d4ed459aceb853f227f4af067a80eb3e8cb98f5c5e4e8a8d16a524f26cb2378c`  
		Last Modified: Fri, 23 Oct 2026 18:07:46 GMT  
		Size: 5.5 MB (5542832 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9c8feaa11a95cce9453fefbacda8df3a4059464c1cba54aed27360a9f4a3bcf2`  
		Last Modified: Fri, 23 Oct 2026 18:07:46 GMT  
		Size: 10.9 KB (10910 bytes)  
		MIME: application/vnd.in-toto+json

### `amazoncorretto:11-al2-generic` - linux; arm64 variant v8

```console
$ docker pull amazoncorretto@sha256:bd480ba9565c376697acaec15521b7a03f34d3c16c021d939f581b409b475ebe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.3 MB (210293166 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:667ef40529eeac8e57876159c7d37cbf29decf05fa5519c1dfa0a9f7a4e2c745`
-	Default Command: `["\/bin\/bash"]`

```dockerfile
# Fri, 23 Oct 2026 00:41:41 GMT
COPY /rootfs/ / # buildkit
# Fri, 23 Oct 2026 00:41:41 GMT
CMD ["/bin/bash"]
# Fri, 23 Oct 2026 18:07:28 GMT
ARG version=11.0.33.0.9-1
# Fri, 23 Oct 2026 18:07:28 GMT
# ARGS: version=11.0.33.0.9-1
RUN set -eux     && export GNUPGHOME="$(mktemp -d)"     && curl -fL -o corretto.key https://yum.corretto.aws/corretto.key     && gpg --batch --import corretto.key     && gpg --batch --export --armor '6DC3636DAE534049C8B94623A122542AB04F24E3' > corretto.key     && rpm --import corretto.key     && rm -r "$GNUPGHOME" corretto.key     && curl -fL -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo     && grep -q '^gpgcheck=1' /etc/yum.repos.d/corretto.repo     && echo "priority=9" >> /etc/yum.repos.d/corretto.repo     && yum install -y java-11-amazon-corretto-devel-$version     && (find /usr/lib/jvm/java-11-amazon-corretto -name src.zip -delete || true)     && yum install -y fontconfig     && yum clean all # buildkit
# Fri, 23 Oct 2026 18:07:28 GMT
ENV LANG=C.UTF-8
# Fri, 23 Oct 2026 18:07:28 GMT
ENV JAVA_HOME=/usr/lib/jvm/java-11-amazon-corretto
```

-	Layers:
	-	`sha256:90a41cb984a9307d13eb248c95fd13ac0a0631a9e189ff342b8a62cd0d8a0d7d`  
		Last Modified: Fri, 23 Oct 2026 00:41:56 GMT  
		Size: 64.8 MB (64835719 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9dde7b852f33f6680d0318db27997e4d7a2d3d8ff5ccda5c327014c8e24e33e`  
		Last Modified: Fri, 23 Oct 2026 18:07:49 GMT  
		Size: 145.5 MB (145457447 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `amazoncorretto:11-al2-generic` - unknown; unknown

```console
$ docker pull amazoncorretto@sha256:e18a17c3eaa8b6e9bfe9b3599fd65c66b65fdccb1946eff962dea19cf3c4993f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.6 MB (5553362 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cce54df4eae8281d15f2202c6f0e878343c914871a61458472cf69540f650ad1`

```dockerfile
```

-	Layers:
	-	`sha256:32c462e17a2a02fc26f686299d5a3cc3ed57397ded48befa314eee787a155699`  
		Last Modified: Fri, 23 Oct 2026 18:07:46 GMT  
		Size: 5.5 MB (5542314 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0589906f31e894be9e64ada51070d2c1d4d7b168df126116aaca7e8e663a760f`  
		Last Modified: Fri, 23 Oct 2026 18:07:45 GMT  
		Size: 11.0 KB (11048 bytes)  
		MIME: application/vnd.in-toto+json
