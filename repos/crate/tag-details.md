<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `crate`

-	[`crate:6.0`](#crate60)
-	[`crate:6.0.8`](#crate608)
-	[`crate:6.1`](#crate61)
-	[`crate:6.1.6`](#crate616)
-	[`crate:6.2`](#crate62)
-	[`crate:6.2.11`](#crate6211)
-	[`crate:6.3`](#crate63)
-	[`crate:6.3.5`](#crate635)
-	[`crate:latest`](#cratelatest)

## `crate:6.0`

```console
$ docker pull crate@sha256:cc3fe799ebd2f29e215d6de6f93f54177bcc9417b95c1f1eefcbbff8668663c1
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.0` - linux; amd64

```console
$ docker pull crate@sha256:a321d5b46c2634a265e4888aa64cb080ef745397183398ae160d4e2a69351f0f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.6 MB (244569300 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a7cc9b32757dd31ee2f721d730d60df4cd72c4c257fc514b114482dede7dab66`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:12 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:12 GMT
CMD ["/bin/bash"]
# Thu, 11 Jun 2026 19:06:53 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 11 Jun 2026 19:07:06 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.0.7.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.0.7.tar.gz.asc crate-6.0.7.tar.gz     && rm -rf "$GNUPGHOME" crate-6.0.7.tar.gz.asc     && tar -xf crate-6.0.7.tar.gz -C /crate --strip-components=1     && rm crate-6.0.7.tar.gz # buildkit
# Thu, 11 Jun 2026 19:07:09 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 11 Jun 2026 19:07:09 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Jun 2026 19:07:09 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 11 Jun 2026 19:07:09 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 11 Jun 2026 19:07:09 GMT
VOLUME [/data]
# Thu, 11 Jun 2026 19:07:10 GMT
WORKDIR /data
# Thu, 11 Jun 2026 19:07:10 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 11 Jun 2026 19:07:10 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 11 Jun 2026 19:07:10 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 11 Jun 2026 19:07:10 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-06-09T10:39:03.498747+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.0.7
# Thu, 11 Jun 2026 19:07:10 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 11 Jun 2026 19:07:10 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 Jun 2026 19:07:10 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e787432b3044759d693031c5b5b1f432cb4b7cc6c8f9d21577a5906dd5e538c5`  
		Last Modified: Tue, 02 Jun 2026 19:04:29 GMT  
		Size: 68.6 MB (68553003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:077c711948fb4110e45f618b3b3a533059eff1bf9295c1cc41e547c33af5be66`  
		Last Modified: Thu, 11 Jun 2026 19:07:29 GMT  
		Size: 18.2 MB (18206135 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cac24950efde76115158a007e2775634c7f0f0debbb8e4c6eba6678d0c74804c`  
		Last Modified: Thu, 11 Jun 2026 19:07:33 GMT  
		Size: 149.0 MB (149020351 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:79a9588e94031567b495842c2839cd3a65b68698025c6ace7b25ada0fa4c325b`  
		Last Modified: Thu, 11 Jun 2026 19:07:29 GMT  
		Size: 8.8 MB (8787933 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:471dd6e55bd4d530e23c8704b398fc26c54fe1422fea135ada359ef4db30d256`  
		Last Modified: Thu, 11 Jun 2026 19:07:27 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:81ccf4607b9623c0156a86969c11c9375fcb9ea9d7172c8c6970143c4fb157ec`  
		Last Modified: Thu, 11 Jun 2026 19:07:30 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5c57467152718a0f4662579702cee3b4dbb2f7c215361d25651b5bb31f5435cb`  
		Last Modified: Thu, 11 Jun 2026 19:07:30 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8a28c4b907e2d082b39effceb4e972f7ea04361c8fa43021a8bb07ea8a540ce`  
		Last Modified: Thu, 11 Jun 2026 19:07:31 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.0` - unknown; unknown

```console
$ docker pull crate@sha256:5983b938d541eed4d6ab55a77e28a1491820a6014d14e19b4e1b493b4f173f85
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6673650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38e57729f05b0fe465094cfd9813904b4e3915916e72493930ba82d76e587862`

```dockerfile
```

-	Layers:
	-	`sha256:767174739348b643012a1149d3b7f526ca871f5ee3b2112c492825c6aa5e5232`  
		Last Modified: Thu, 11 Jun 2026 19:07:29 GMT  
		Size: 6.7 MB (6652307 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:4a52cc69986ee679da1de97563f5a451c6e0ac774b9a0b3e307d736bd8e1d997`  
		Last Modified: Thu, 11 Jun 2026 19:07:28 GMT  
		Size: 21.3 KB (21343 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.0` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:6cf3ee37cb7a6fd75ec02bf2c9006497cd5f86fd95194ee71f5d35a3b65d0e16
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.9 MB (243888573 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:81fcaff9a0df848e0fb7cd0541f557d1dada2e15edf963c9ebb61d538f23ab8a`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:17 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:17 GMT
CMD ["/bin/bash"]
# Thu, 11 Jun 2026 19:06:45 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 11 Jun 2026 19:06:58 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.0.7.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.0.7.tar.gz.asc crate-6.0.7.tar.gz     && rm -rf "$GNUPGHOME" crate-6.0.7.tar.gz.asc     && tar -xf crate-6.0.7.tar.gz -C /crate --strip-components=1     && rm crate-6.0.7.tar.gz # buildkit
# Thu, 11 Jun 2026 19:07:01 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 11 Jun 2026 19:07:01 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 11 Jun 2026 19:07:01 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 11 Jun 2026 19:07:01 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 11 Jun 2026 19:07:01 GMT
VOLUME [/data]
# Thu, 11 Jun 2026 19:07:01 GMT
WORKDIR /data
# Thu, 11 Jun 2026 19:07:01 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 11 Jun 2026 19:07:01 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 11 Jun 2026 19:07:01 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 11 Jun 2026 19:07:01 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-06-09T10:39:03.498747+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.0.7
# Thu, 11 Jun 2026 19:07:01 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 11 Jun 2026 19:07:01 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 11 Jun 2026 19:07:01 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4e642e2dc39d48325d258aab2be76368a8810b551698a78f8de70b4d572f710`  
		Last Modified: Tue, 02 Jun 2026 19:04:33 GMT  
		Size: 67.1 MB (67133180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3057bba23eb1d45d847a5bbc9d2b0534c22818ed9210c7f426266ba09506d9a8`  
		Last Modified: Thu, 11 Jun 2026 19:07:21 GMT  
		Size: 18.3 MB (18255591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7f5b9b27e145fc10e6de8685f6420a6fbc9f3e808108562ad6264e092676a11b`  
		Last Modified: Thu, 11 Jun 2026 19:07:24 GMT  
		Size: 149.7 MB (149712738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:26f0e3c37556b8e94a9117e4719d7d7d28be0dc467f64ba2c90c1d2547819fe7`  
		Last Modified: Thu, 11 Jun 2026 19:07:20 GMT  
		Size: 8.8 MB (8785181 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:263248e7b99493ac7cb28c1729684fb8610fb006f07a6158fc3ae17212e6dfdb`  
		Last Modified: Thu, 11 Jun 2026 19:07:19 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2f55a660fd9b9d004b7293a0adad781ace9edc661cd3bf7943f7e96d75ac4919`  
		Last Modified: Thu, 11 Jun 2026 19:07:21 GMT  
		Size: 264.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:292eeaf85963ddafe1c41665b83f541c2f7a1bb6c7a6d3d2e6e9570793434b9d`  
		Last Modified: Thu, 11 Jun 2026 19:07:22 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8a4788a1f3966001274574e071036a9a4a5d0a24b53b78552e27500b7a6911d9`  
		Last Modified: Thu, 11 Jun 2026 19:07:22 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.0` - unknown; unknown

```console
$ docker pull crate@sha256:adf7ccef70f686331fedb8ec41606ce96aa93ec5dae9f6be66410570bb39a235
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6671688 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f3db803e70e054b44e4e85ab0c6baeef99eb117c035ccfbc69a7509d6f8fd2b4`

```dockerfile
```

-	Layers:
	-	`sha256:bc1c5b361587e94b786b11e6ba2ec388299c4f79798e03cc5a64a4ff552f6e65`  
		Last Modified: Thu, 11 Jun 2026 19:07:20 GMT  
		Size: 6.7 MB (6650219 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9fb32ef54e456749c047be65ae8249d99d88f1bef8c18e5fb702042107a29943`  
		Last Modified: Thu, 11 Jun 2026 19:07:20 GMT  
		Size: 21.5 KB (21469 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.0.8`

**does not exist** (yet?)

## `crate:6.1`

```console
$ docker pull crate@sha256:6b531f1c27a66e3aeb45ffa7690b8abee84521f53f69a84c8ab729e4a54beb0f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.1` - linux; amd64

```console
$ docker pull crate@sha256:c8399e093ebc88c2897272ccbf7d1c695221bef04ef0aab9598a82afb013f9e5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **245.4 MB (245379924 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cbdb6d032e4cc282064b850d993804a45e73e4d8bb33e9fa897dddf7c40256a6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:12 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:12 GMT
CMD ["/bin/bash"]
# Thu, 25 Jun 2026 20:24:19 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 25 Jun 2026 20:25:08 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.1.5.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.1.5.tar.gz.asc crate-6.1.5.tar.gz     && rm -rf "$GNUPGHOME" crate-6.1.5.tar.gz.asc     && tar -xf crate-6.1.5.tar.gz -C /crate --strip-components=1     && rm crate-6.1.5.tar.gz # buildkit
# Thu, 25 Jun 2026 20:25:11 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 25 Jun 2026 20:25:11 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Jun 2026 20:25:11 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 25 Jun 2026 20:25:11 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 25 Jun 2026 20:25:11 GMT
VOLUME [/data]
# Thu, 25 Jun 2026 20:25:11 GMT
WORKDIR /data
# Thu, 25 Jun 2026 20:25:11 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 25 Jun 2026 20:25:11 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 25 Jun 2026 20:25:11 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 25 Jun 2026 20:25:11 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-06-22T08:26:15.022963+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.1.5
# Thu, 25 Jun 2026 20:25:11 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 25 Jun 2026 20:25:11 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Jun 2026 20:25:11 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e787432b3044759d693031c5b5b1f432cb4b7cc6c8f9d21577a5906dd5e538c5`  
		Last Modified: Tue, 02 Jun 2026 19:04:29 GMT  
		Size: 68.6 MB (68553003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc5484c7cbeda06921f2877aa3f6ff65611da7fa272b657d02c3d86c7aa6994`  
		Last Modified: Thu, 25 Jun 2026 20:24:45 GMT  
		Size: 18.9 MB (18888295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:64a6f9b79f2ae05f0edd4c13cf2c2bb713171be6a9c0c7b39e9516755ee94d7b`  
		Last Modified: Thu, 25 Jun 2026 20:25:31 GMT  
		Size: 149.1 MB (149148706 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:603cf82f05ef33aafad5addca4675b5d69e2b4730442877f7206eef4df290706`  
		Last Modified: Thu, 25 Jun 2026 20:25:28 GMT  
		Size: 8.8 MB (8788044 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f2f0c0adf99b5fa5f55d283f2aab95b13c5e19916c42b1aafec7a10b20fc3bef`  
		Last Modified: Thu, 25 Jun 2026 20:25:27 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9720035e7c0d63a9d565e48161b6ac1a4b26fd1b0870cf432fe0f5e753e064aa`  
		Last Modified: Thu, 25 Jun 2026 20:25:27 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21b1c27930a3cb4797e1db5cfa24ff1f27a5e91061fc2c388cd6df69a3717fe3`  
		Last Modified: Thu, 25 Jun 2026 20:25:29 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1a7cfbf634d4a15e8051d0776b9ff5909bc69f54eadaca0c3420f6395c67c31a`  
		Last Modified: Thu, 25 Jun 2026 20:25:29 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.1` - unknown; unknown

```console
$ docker pull crate@sha256:9f21b7fdf33b840f7a738ad2947c83d0d279de91741a9da8d65b9638b2c0053d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6672427 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ccbfcb40de919cfa86856b07820e3512bbaf7234ec1c9266d148efe481b9ed8f`

```dockerfile
```

-	Layers:
	-	`sha256:0bedb6c28f0a731574a342ca0988e6f087c10d4ec44088fd7f51044d1067cf94`  
		Last Modified: Thu, 25 Jun 2026 20:25:28 GMT  
		Size: 6.7 MB (6651083 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:bfe3c5db95620ae29e7ca57745becd1b5bbadd88fff158f2351e438a9dcb3f5d`  
		Last Modified: Thu, 25 Jun 2026 20:25:27 GMT  
		Size: 21.3 KB (21344 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.1` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:ba982299cb7f9590a48dc47e265244a978a5c92c5b9815a9a7ba6a60b8ccb689
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244688607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6121141a57eb64274b097655239dc8f021e26e3fa300bed02b35d4c64cc993c6`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:17 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:17 GMT
CMD ["/bin/bash"]
# Thu, 25 Jun 2026 20:24:16 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 25 Jun 2026 20:25:14 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.1.5.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.1.5.tar.gz.asc crate-6.1.5.tar.gz     && rm -rf "$GNUPGHOME" crate-6.1.5.tar.gz.asc     && tar -xf crate-6.1.5.tar.gz -C /crate --strip-components=1     && rm crate-6.1.5.tar.gz # buildkit
# Thu, 25 Jun 2026 20:25:17 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 25 Jun 2026 20:25:17 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Jun 2026 20:25:17 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 25 Jun 2026 20:25:17 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 25 Jun 2026 20:25:17 GMT
VOLUME [/data]
# Thu, 25 Jun 2026 20:25:17 GMT
WORKDIR /data
# Thu, 25 Jun 2026 20:25:17 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 25 Jun 2026 20:25:17 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 25 Jun 2026 20:25:17 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 25 Jun 2026 20:25:17 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-06-22T08:26:15.022963+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.1.5
# Thu, 25 Jun 2026 20:25:17 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 25 Jun 2026 20:25:17 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Jun 2026 20:25:17 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4e642e2dc39d48325d258aab2be76368a8810b551698a78f8de70b4d572f710`  
		Last Modified: Tue, 02 Jun 2026 19:04:33 GMT  
		Size: 67.1 MB (67133180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc2f75f14b06fde9f6405b2f9d9402ef3e7243c534ebd53896bc9fa5c25de23d`  
		Last Modified: Thu, 25 Jun 2026 20:24:51 GMT  
		Size: 18.9 MB (18928879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ef8e607a7ca59e9265ab991d3cb92a37f8f95fd89a7f6ebb0beee7caa902b70b`  
		Last Modified: Thu, 25 Jun 2026 20:25:39 GMT  
		Size: 149.8 MB (149839410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:108b63da95c84c3fb6c7e5ed0a7d33cc2039c869466d052237a42d2c1fe08b61`  
		Last Modified: Thu, 25 Jun 2026 20:25:36 GMT  
		Size: 8.8 MB (8785264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e108b52de1cc7ee3ff4679c1ad7090d58579d89ab57852c797be5b3a144d6b0`  
		Last Modified: Thu, 25 Jun 2026 20:25:35 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67db41effe834b247082f5256362f1d3c4cca3e9db1a7f30bc858c0188f7dde8`  
		Last Modified: Thu, 25 Jun 2026 20:25:35 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:845d5552526513d90bdfbe44ec20dc2a21d36dc81eeaa97e6ce62a37b8b85a98`  
		Last Modified: Thu, 25 Jun 2026 20:25:37 GMT  
		Size: 950.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3736744efc8f57ec22366c6fb9db80cfc53be261089a09058cac70a98fe9d7ef`  
		Last Modified: Thu, 25 Jun 2026 20:25:37 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.1` - unknown; unknown

```console
$ docker pull crate@sha256:b3a725e3e6082754585f3cf7b2c88014bd9df231b7b8a69d857be6b9ea58c48d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6670464 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a50fb8214e20699e3cce6f79726265553081da802c437750bd2c56dd695be068`

```dockerfile
```

-	Layers:
	-	`sha256:219cc65a86ada89880dcb8ad816447ea5b845af74be5847b7f77d6320e1910e8`  
		Last Modified: Thu, 25 Jun 2026 20:25:36 GMT  
		Size: 6.6 MB (6648995 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9100d88cdb497bf15162d68438e7f5ea5357b9db72c7610eea39b58ec623dd23`  
		Last Modified: Thu, 25 Jun 2026 20:25:35 GMT  
		Size: 21.5 KB (21469 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.1.6`

**does not exist** (yet?)

## `crate:6.2`

```console
$ docker pull crate@sha256:df139c6080b46e8a0210804e77ef4819783d87ecbb5fd10e20498479101ccfd4
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.2` - linux; amd64

```console
$ docker pull crate@sha256:046af94d8995f81879e23893ce296d21486b13c4a12dbdc6852c0ee8379b9c2b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.8 MB (247831937 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8334db570a3cf02ea1dd20109ceb6a4fa1023bb26886f7a00805c6b49e3fb2c3`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:12 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:12 GMT
CMD ["/bin/bash"]
# Thu, 25 Jun 2026 20:25:30 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 25 Jun 2026 20:25:45 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.2.10.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.2.10.tar.gz.asc crate-6.2.10.tar.gz     && rm -rf "$GNUPGHOME" crate-6.2.10.tar.gz.asc     && tar -xf crate-6.2.10.tar.gz -C /crate --strip-components=1     && rm crate-6.2.10.tar.gz # buildkit
# Thu, 25 Jun 2026 20:25:48 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 25 Jun 2026 20:25:48 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Jun 2026 20:25:48 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 25 Jun 2026 20:25:48 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 25 Jun 2026 20:25:48 GMT
VOLUME [/data]
# Thu, 25 Jun 2026 20:25:48 GMT
WORKDIR /data
# Thu, 25 Jun 2026 20:25:48 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 25 Jun 2026 20:25:48 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 25 Jun 2026 20:25:48 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 25 Jun 2026 20:25:48 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-06-22T09:16:48.612223+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.2.10
# Thu, 25 Jun 2026 20:25:48 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 25 Jun 2026 20:25:48 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Jun 2026 20:25:48 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e787432b3044759d693031c5b5b1f432cb4b7cc6c8f9d21577a5906dd5e538c5`  
		Last Modified: Tue, 02 Jun 2026 19:04:29 GMT  
		Size: 68.6 MB (68553003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d912ff2888297dc2635a0955b667a45c16c365ef1f5066b1012370821f3f3fca`  
		Last Modified: Thu, 25 Jun 2026 20:26:08 GMT  
		Size: 18.9 MB (18887922 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:19043d6b00a357b05ffea746e4aed6fe9dfd3151d4052d86a4892da5584c437d`  
		Last Modified: Thu, 25 Jun 2026 20:26:12 GMT  
		Size: 151.6 MB (151601116 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7782b1af47f17820a19b61311fddb80daa7440b6a1b20a3a12370a9c98f7466e`  
		Last Modified: Thu, 25 Jun 2026 20:26:08 GMT  
		Size: 8.8 MB (8788018 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cdc3726daa77886c504c10a33b36c9b8dff25481ff7ed73b0ec1f49fe47836a8`  
		Last Modified: Thu, 25 Jun 2026 20:26:07 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cdcd05beaa275e3f3ab484b81a78cb648c0c4b669210fdbfc71c5d2e44f8c51`  
		Last Modified: Thu, 25 Jun 2026 20:26:09 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:139609cc7602189c57446898c49c7c7122ae35211dc146b825a31fa1496eab6d`  
		Last Modified: Thu, 25 Jun 2026 20:26:09 GMT  
		Size: 951.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5aeba49206d585477c37e4180a89d8312783880073061f61d087e6515fdaf0d1`  
		Last Modified: Thu, 25 Jun 2026 20:26:10 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.2` - unknown; unknown

```console
$ docker pull crate@sha256:fd4250a700cac6940e70cb74fd59cbf92da14f183737236e5afe0194719ae8d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6678657 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fce8f8d7a95c1be5f575347d11d0f8c0234db77fad30ba1d6902ee7c21342da4`

```dockerfile
```

-	Layers:
	-	`sha256:1733e1a3ec90ad28841bd25e27abb076a793397d068ae6eb1e16614eb0258259`  
		Last Modified: Thu, 25 Jun 2026 20:26:08 GMT  
		Size: 6.7 MB (6657297 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:222a1104d9b782a1395640e088c09c4651ddc4a623c80e7f95b5a98cd8368243`  
		Last Modified: Thu, 25 Jun 2026 20:26:07 GMT  
		Size: 21.4 KB (21360 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.2` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:a9a8bb6e202b970c8db849a0c32dbea0b98e8f57b8e40a3b78453b3a206a6cf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.4 MB (244390536 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5851dd9c8991a4ca6e41575869be5322aeb3e952e7b0956355fb4c2179cc3996`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:17 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:17 GMT
CMD ["/bin/bash"]
# Thu, 25 Jun 2026 20:25:25 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 25 Jun 2026 20:25:40 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.2.10.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.2.10.tar.gz.asc crate-6.2.10.tar.gz     && rm -rf "$GNUPGHOME" crate-6.2.10.tar.gz.asc     && tar -xf crate-6.2.10.tar.gz -C /crate --strip-components=1     && rm crate-6.2.10.tar.gz # buildkit
# Thu, 25 Jun 2026 20:25:44 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 25 Jun 2026 20:25:44 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Jun 2026 20:25:44 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 25 Jun 2026 20:25:44 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 25 Jun 2026 20:25:44 GMT
VOLUME [/data]
# Thu, 25 Jun 2026 20:25:44 GMT
WORKDIR /data
# Thu, 25 Jun 2026 20:25:44 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 25 Jun 2026 20:25:44 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 25 Jun 2026 20:25:44 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 25 Jun 2026 20:25:44 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-06-22T09:16:48.612223+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.2.10
# Thu, 25 Jun 2026 20:25:44 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 25 Jun 2026 20:25:44 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Jun 2026 20:25:44 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4e642e2dc39d48325d258aab2be76368a8810b551698a78f8de70b4d572f710`  
		Last Modified: Tue, 02 Jun 2026 19:04:33 GMT  
		Size: 67.1 MB (67133180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d5108dcea4c0c8063ead0471899624b7a3ebdfb473552d8fa7019796080a4b2d`  
		Last Modified: Thu, 25 Jun 2026 20:26:04 GMT  
		Size: 18.9 MB (18928949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83bd984f749e9b794fb8b3a3a86420c4377bfa2378b288c6f12bd1c7017a1375`  
		Last Modified: Thu, 25 Jun 2026 20:26:08 GMT  
		Size: 149.5 MB (149540941 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e9805c1cf102c5a6b00a07faf96274ba1214a73462e00a66ffd5cd18f24717d`  
		Last Modified: Thu, 25 Jun 2026 20:26:04 GMT  
		Size: 8.8 MB (8785588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce45f6db4768f08a92060fd03bea92b108c564e329b3ab36d4d6238e15bcb4a6`  
		Last Modified: Thu, 25 Jun 2026 20:26:03 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c370e1f44de6b40197d0a2297eb7ac26680bbd589e0192c22cb02bb89ee9cd4`  
		Last Modified: Thu, 25 Jun 2026 20:26:04 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:715bdc45cb59442318e8b6811783a25873cb81a43b56537b2039f6c2e4ab5e65`  
		Last Modified: Thu, 25 Jun 2026 20:26:05 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3d5eed25883548e253d861f5797bd9a3f81ff48a8e586226b3d075e08ff46836`  
		Last Modified: Thu, 25 Jun 2026 20:26:06 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.2` - unknown; unknown

```console
$ docker pull crate@sha256:47b7842df7875d6bde8f0e87eeff5b2803e69169bdda3a40d77214f543c29ea2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.7 MB (6676694 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fda2df5fb7a342374f91075f6e4b47a9a39c04c4dbd186d5092ea582873d8db2`

```dockerfile
```

-	Layers:
	-	`sha256:c04f47681a4c993dbdd44fb97b220746b60674f44ce1ead2133b333bd253a9d6`  
		Last Modified: Thu, 25 Jun 2026 20:26:03 GMT  
		Size: 6.7 MB (6655209 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e80f7fedb0b5295971a8941b9a5b4730aa08decc0b542a039bb955ea92858823`  
		Last Modified: Thu, 25 Jun 2026 20:26:03 GMT  
		Size: 21.5 KB (21485 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.2.11`

**does not exist** (yet?)

## `crate:6.3`

```console
$ docker pull crate@sha256:f57ea7f51cdddfaf86d04820dfc2a8f8b54e6abc37f032bc582f190be8f4efd0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.3` - linux; amd64

```console
$ docker pull crate@sha256:7d0ad2b1cb6652d1b400c38442c56756d0c9594cbb3da7c2b6db34c3dc9793f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.6 MB (235576817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1391e027e7e92fc4d3d5fe5e604fc8f5eb6dd7ce8a839bc0a78b5fb89f43ea9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:12 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:12 GMT
CMD ["/bin/bash"]
# Thu, 25 Jun 2026 20:24:19 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 25 Jun 2026 20:24:24 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.3.4.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.3.4.tar.gz.asc crate-6.3.4.tar.gz     && rm -rf "$GNUPGHOME" crate-6.3.4.tar.gz.asc     && tar -xf crate-6.3.4.tar.gz -C /crate --strip-components=1     && rm crate-6.3.4.tar.gz # buildkit
# Thu, 25 Jun 2026 20:24:26 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 25 Jun 2026 20:24:26 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Jun 2026 20:24:26 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 25 Jun 2026 20:24:26 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 25 Jun 2026 20:24:26 GMT
VOLUME [/data]
# Thu, 25 Jun 2026 20:24:26 GMT
WORKDIR /data
# Thu, 25 Jun 2026 20:24:26 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 25 Jun 2026 20:24:26 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 25 Jun 2026 20:24:26 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 25 Jun 2026 20:24:26 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-06-22T10:01:06.348275+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.3.4
# Thu, 25 Jun 2026 20:24:26 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 25 Jun 2026 20:24:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Jun 2026 20:24:26 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e787432b3044759d693031c5b5b1f432cb4b7cc6c8f9d21577a5906dd5e538c5`  
		Last Modified: Tue, 02 Jun 2026 19:04:29 GMT  
		Size: 68.6 MB (68553003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc5484c7cbeda06921f2877aa3f6ff65611da7fa272b657d02c3d86c7aa6994`  
		Last Modified: Thu, 25 Jun 2026 20:24:45 GMT  
		Size: 18.9 MB (18888295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041082b683adbeeb7493f7e7d951839e677e50f9e5af2a1a61804d2e7885ff89`  
		Last Modified: Thu, 25 Jun 2026 20:24:47 GMT  
		Size: 139.3 MB (139345542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a48a6a4dfcec84e1fabc1ebfdd73a5c71684909e3854bcaff1e85a7eecb144c7`  
		Last Modified: Thu, 25 Jun 2026 20:24:44 GMT  
		Size: 8.8 MB (8788098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4b42bc14f77a08aa5ec7a535ae84c9619dd5a8907c8e8349179a513bc07523`  
		Last Modified: Thu, 25 Jun 2026 20:24:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eaddefc75e6d3d37e3297b2b70b0b95ab648246267ecb33655f35a314aee391`  
		Last Modified: Thu, 25 Jun 2026 20:24:45 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87090d92f94f2630478d029a214f5dc6340120df4382cbe871a4361d6224643f`  
		Last Modified: Thu, 25 Jun 2026 20:24:45 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff3d9fda5977b1b3501ca8138569f83dc4de953f4d5e1bf0ae7e6a7b7c7e0c2`  
		Last Modified: Thu, 25 Jun 2026 20:24:46 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.3` - unknown; unknown

```console
$ docker pull crate@sha256:b57f251cdd3b453916ccca8f05127fdd10720eb99d62b15de39da4702511a1cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6628650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee488022031c98b91cfd4eaa18280e6559122757cab3992536ebccd1d79f2584`

```dockerfile
```

-	Layers:
	-	`sha256:1ff7caec32d62e43aee5ca73f77dedf4b267efe41278e6c672eae12cdf883e89`  
		Last Modified: Thu, 25 Jun 2026 20:24:44 GMT  
		Size: 6.6 MB (6607010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edcaef02dee8324c7d054ca69b2e57cf9df20fe354d16ee2329c96308ed7a91e`  
		Last Modified: Thu, 25 Jun 2026 20:24:43 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.3` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:c2d8ed55dbdadf0530f26ca4a252676795915a58ca1c7a46cb9876617e0fec9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.1 MB (232128639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd072dffae164d94e2f7cd8826613d24d13cfa9548bd60b5868a82494f3c6f75`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:17 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:17 GMT
CMD ["/bin/bash"]
# Thu, 25 Jun 2026 20:24:16 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 25 Jun 2026 20:24:28 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.3.4.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.3.4.tar.gz.asc crate-6.3.4.tar.gz     && rm -rf "$GNUPGHOME" crate-6.3.4.tar.gz.asc     && tar -xf crate-6.3.4.tar.gz -C /crate --strip-components=1     && rm crate-6.3.4.tar.gz # buildkit
# Thu, 25 Jun 2026 20:24:31 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 25 Jun 2026 20:24:31 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Jun 2026 20:24:31 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 25 Jun 2026 20:24:31 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 25 Jun 2026 20:24:31 GMT
VOLUME [/data]
# Thu, 25 Jun 2026 20:24:31 GMT
WORKDIR /data
# Thu, 25 Jun 2026 20:24:31 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 25 Jun 2026 20:24:31 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 25 Jun 2026 20:24:31 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 25 Jun 2026 20:24:31 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-06-22T10:01:06.348275+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.3.4
# Thu, 25 Jun 2026 20:24:31 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 25 Jun 2026 20:24:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Jun 2026 20:24:31 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4e642e2dc39d48325d258aab2be76368a8810b551698a78f8de70b4d572f710`  
		Last Modified: Tue, 02 Jun 2026 19:04:33 GMT  
		Size: 67.1 MB (67133180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc2f75f14b06fde9f6405b2f9d9402ef3e7243c534ebd53896bc9fa5c25de23d`  
		Last Modified: Thu, 25 Jun 2026 20:24:51 GMT  
		Size: 18.9 MB (18928879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee1369feaaccca81c553977844f40cdaf80940cee5fdd44733467e62128d8778`  
		Last Modified: Thu, 25 Jun 2026 20:24:54 GMT  
		Size: 137.3 MB (137279245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8403c76810d03f10e630e66e813fdf771103c3fff670bf1a3967c751d73db76d`  
		Last Modified: Thu, 25 Jun 2026 20:24:51 GMT  
		Size: 8.8 MB (8785460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ee25d65740a1cbe9534cc6d38ba439be20e75fd1da6f89831ad77a97241af41`  
		Last Modified: Thu, 25 Jun 2026 20:24:50 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c18de11e0f0c9f908fcef1a8548e0a9b08f045dee2a97860241d4c605f1efa8`  
		Last Modified: Thu, 25 Jun 2026 20:24:51 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:436dfe441b795063ca671c492b3f8dd9980cccbc57893ad0d534c47a45e1d7eb`  
		Last Modified: Thu, 25 Jun 2026 20:24:52 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa8378c8a956d499e26da9ef6d51965d8ffe5dbc11632a907d6aad434db8057`  
		Last Modified: Thu, 25 Jun 2026 20:24:53 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.3` - unknown; unknown

```console
$ docker pull crate@sha256:0885d5c8e5dda4a33dfdbff733e8ca6cd3de3ae62b91f207f9aa4b6ec189235b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6626711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:790bff37a61df14353e5494289f26771f7420938b9381e5e0aa5943cb7525cda`

```dockerfile
```

-	Layers:
	-	`sha256:ddba406acf80872d53c087026c905d480dccd29f132d1f4980f01764aff47c96`  
		Last Modified: Thu, 25 Jun 2026 20:24:51 GMT  
		Size: 6.6 MB (6604934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9129320c4baf308f4ed1f8a4d39abd279881e558fb480b077b7b706ae6e3f669`  
		Last Modified: Thu, 25 Jun 2026 20:24:50 GMT  
		Size: 21.8 KB (21777 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.3.5`

**does not exist** (yet?)

## `crate:latest`

```console
$ docker pull crate@sha256:f57ea7f51cdddfaf86d04820dfc2a8f8b54e6abc37f032bc582f190be8f4efd0
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:7d0ad2b1cb6652d1b400c38442c56756d0c9594cbb3da7c2b6db34c3dc9793f4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **235.6 MB (235576817 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b1391e027e7e92fc4d3d5fe5e604fc8f5eb6dd7ce8a839bc0a78b5fb89f43ea9`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:12 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:12 GMT
CMD ["/bin/bash"]
# Thu, 25 Jun 2026 20:24:19 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 25 Jun 2026 20:24:24 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.3.4.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.3.4.tar.gz.asc crate-6.3.4.tar.gz     && rm -rf "$GNUPGHOME" crate-6.3.4.tar.gz.asc     && tar -xf crate-6.3.4.tar.gz -C /crate --strip-components=1     && rm crate-6.3.4.tar.gz # buildkit
# Thu, 25 Jun 2026 20:24:26 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 25 Jun 2026 20:24:26 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Jun 2026 20:24:26 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 25 Jun 2026 20:24:26 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 25 Jun 2026 20:24:26 GMT
VOLUME [/data]
# Thu, 25 Jun 2026 20:24:26 GMT
WORKDIR /data
# Thu, 25 Jun 2026 20:24:26 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 25 Jun 2026 20:24:26 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 25 Jun 2026 20:24:26 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 25 Jun 2026 20:24:26 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-06-22T10:01:06.348275+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.3.4
# Thu, 25 Jun 2026 20:24:26 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 25 Jun 2026 20:24:26 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Jun 2026 20:24:26 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:e787432b3044759d693031c5b5b1f432cb4b7cc6c8f9d21577a5906dd5e538c5`  
		Last Modified: Tue, 02 Jun 2026 19:04:29 GMT  
		Size: 68.6 MB (68553003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ecc5484c7cbeda06921f2877aa3f6ff65611da7fa272b657d02c3d86c7aa6994`  
		Last Modified: Thu, 25 Jun 2026 20:24:45 GMT  
		Size: 18.9 MB (18888295 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:041082b683adbeeb7493f7e7d951839e677e50f9e5af2a1a61804d2e7885ff89`  
		Last Modified: Thu, 25 Jun 2026 20:24:47 GMT  
		Size: 139.3 MB (139345542 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a48a6a4dfcec84e1fabc1ebfdd73a5c71684909e3854bcaff1e85a7eecb144c7`  
		Last Modified: Thu, 25 Jun 2026 20:24:44 GMT  
		Size: 8.8 MB (8788098 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc4b42bc14f77a08aa5ec7a535ae84c9619dd5a8907c8e8349179a513bc07523`  
		Last Modified: Thu, 25 Jun 2026 20:24:43 GMT  
		Size: 126.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3eaddefc75e6d3d37e3297b2b70b0b95ab648246267ecb33655f35a314aee391`  
		Last Modified: Thu, 25 Jun 2026 20:24:45 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:87090d92f94f2630478d029a214f5dc6340120df4382cbe871a4361d6224643f`  
		Last Modified: Thu, 25 Jun 2026 20:24:45 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cff3d9fda5977b1b3501ca8138569f83dc4de953f4d5e1bf0ae7e6a7b7c7e0c2`  
		Last Modified: Thu, 25 Jun 2026 20:24:46 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:b57f251cdd3b453916ccca8f05127fdd10720eb99d62b15de39da4702511a1cd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6628650 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ee488022031c98b91cfd4eaa18280e6559122757cab3992536ebccd1d79f2584`

```dockerfile
```

-	Layers:
	-	`sha256:1ff7caec32d62e43aee5ca73f77dedf4b267efe41278e6c672eae12cdf883e89`  
		Last Modified: Thu, 25 Jun 2026 20:24:44 GMT  
		Size: 6.6 MB (6607010 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edcaef02dee8324c7d054ca69b2e57cf9df20fe354d16ee2329c96308ed7a91e`  
		Last Modified: Thu, 25 Jun 2026 20:24:43 GMT  
		Size: 21.6 KB (21640 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:latest` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:c2d8ed55dbdadf0530f26ca4a252676795915a58ca1c7a46cb9876617e0fec9d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.1 MB (232128639 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd072dffae164d94e2f7cd8826613d24d13cfa9548bd60b5868a82494f3c6f75`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Tue, 02 Jun 2026 19:04:17 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Tue, 02 Jun 2026 19:04:17 GMT
CMD ["/bin/bash"]
# Thu, 25 Jun 2026 20:24:16 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Thu, 25 Jun 2026 20:24:28 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.3.4.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.3.4.tar.gz.asc crate-6.3.4.tar.gz     && rm -rf "$GNUPGHOME" crate-6.3.4.tar.gz.asc     && tar -xf crate-6.3.4.tar.gz -C /crate --strip-components=1     && rm crate-6.3.4.tar.gz # buildkit
# Thu, 25 Jun 2026 20:24:31 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Thu, 25 Jun 2026 20:24:31 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 25 Jun 2026 20:24:31 GMT
ENV CRATE_HEAP_SIZE=512M
# Thu, 25 Jun 2026 20:24:31 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Thu, 25 Jun 2026 20:24:31 GMT
VOLUME [/data]
# Thu, 25 Jun 2026 20:24:31 GMT
WORKDIR /data
# Thu, 25 Jun 2026 20:24:31 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Thu, 25 Jun 2026 20:24:31 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Thu, 25 Jun 2026 20:24:31 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Thu, 25 Jun 2026 20:24:31 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-06-22T10:01:06.348275+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.3.4
# Thu, 25 Jun 2026 20:24:31 GMT
COPY docker-entrypoint.sh / # buildkit
# Thu, 25 Jun 2026 20:24:31 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Thu, 25 Jun 2026 20:24:31 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:f4e642e2dc39d48325d258aab2be76368a8810b551698a78f8de70b4d572f710`  
		Last Modified: Tue, 02 Jun 2026 19:04:33 GMT  
		Size: 67.1 MB (67133180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bc2f75f14b06fde9f6405b2f9d9402ef3e7243c534ebd53896bc9fa5c25de23d`  
		Last Modified: Thu, 25 Jun 2026 20:24:51 GMT  
		Size: 18.9 MB (18928879 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee1369feaaccca81c553977844f40cdaf80940cee5fdd44733467e62128d8778`  
		Last Modified: Thu, 25 Jun 2026 20:24:54 GMT  
		Size: 137.3 MB (137279245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8403c76810d03f10e630e66e813fdf771103c3fff670bf1a3967c751d73db76d`  
		Last Modified: Thu, 25 Jun 2026 20:24:51 GMT  
		Size: 8.8 MB (8785460 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0ee25d65740a1cbe9534cc6d38ba439be20e75fd1da6f89831ad77a97241af41`  
		Last Modified: Thu, 25 Jun 2026 20:24:50 GMT  
		Size: 124.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c18de11e0f0c9f908fcef1a8548e0a9b08f045dee2a97860241d4c605f1efa8`  
		Last Modified: Thu, 25 Jun 2026 20:24:51 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:436dfe441b795063ca671c492b3f8dd9980cccbc57893ad0d534c47a45e1d7eb`  
		Last Modified: Thu, 25 Jun 2026 20:24:52 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aaa8378c8a956d499e26da9ef6d51965d8ffe5dbc11632a907d6aad434db8057`  
		Last Modified: Thu, 25 Jun 2026 20:24:53 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:0885d5c8e5dda4a33dfdbff733e8ca6cd3de3ae62b91f207f9aa4b6ec189235b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6626711 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:790bff37a61df14353e5494289f26771f7420938b9381e5e0aa5943cb7525cda`

```dockerfile
```

-	Layers:
	-	`sha256:ddba406acf80872d53c087026c905d480dccd29f132d1f4980f01764aff47c96`  
		Last Modified: Thu, 25 Jun 2026 20:24:51 GMT  
		Size: 6.6 MB (6604934 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9129320c4baf308f4ed1f8a4d39abd279881e558fb480b077b7b706ae6e3f669`  
		Last Modified: Thu, 25 Jun 2026 20:24:50 GMT  
		Size: 21.8 KB (21777 bytes)  
		MIME: application/vnd.in-toto+json
