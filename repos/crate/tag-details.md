<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `crate`

-	[`crate:6.4`](#crate64)
-	[`crate:6.4.7`](#crate647)
-	[`crate:6.5`](#crate65)
-	[`crate:6.5.1`](#crate651)
-	[`crate:latest`](#cratelatest)

## `crate:6.4`

```console
$ docker pull crate@sha256:b8bcfbdceb423c95551bc5928c330f1dbfeab4f62c224260f8a8b92a2d985054
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.4` - linux; amd64

```console
$ docker pull crate@sha256:978bd9be5585eef8dc11d29043c858278ef25fb0ec3b160c2c18bea0da9115b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.5 MB (247466591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae8f859ea03d36466bc8c8db9445e3d5476160f9e6605b488d838784a8646801`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Mon, 16 Nov 2026 17:36:35 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:36:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:09:52 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 16 Nov 2026 18:09:57 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.7.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.7.tar.gz.asc crate-6.4.7.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.7.tar.gz.asc     && tar -xf crate-6.4.7.tar.gz -C /crate --strip-components=1     && rm crate-6.4.7.tar.gz # buildkit
# Mon, 16 Nov 2026 18:10:00 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 16 Nov 2026 18:10:00 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:10:00 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 16 Nov 2026 18:10:00 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 16 Nov 2026 18:10:00 GMT
VOLUME [/data]
# Mon, 16 Nov 2026 18:10:00 GMT
WORKDIR /data
# Mon, 16 Nov 2026 18:10:00 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 16 Nov 2026 18:10:00 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 16 Nov 2026 18:10:00 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 16 Nov 2026 18:10:00 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-11-04T14:27:19.272135+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.7
# Mon, 16 Nov 2026 18:10:00 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 16 Nov 2026 18:10:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Nov 2026 18:10:00 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:9e958ed8e511d2f9d2c9c7fe64d7300ea92a292244ec8702df311ba1c7647e00`  
		Last Modified: Mon, 16 Nov 2026 17:36:51 GMT  
		Size: 69.4 MB (69394245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973a5f9333278c556fbb7921a436ad977042fcd8a0df01871edeedc7f8c93456`  
		Last Modified: Mon, 16 Nov 2026 18:10:19 GMT  
		Size: 19.0 MB (18994653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e081fe072e8fd08e606ebcd519560eb507e415e7fc7e23e60fe813f7eb4408`  
		Last Modified: Mon, 16 Nov 2026 18:10:22 GMT  
		Size: 149.3 MB (149275503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:806d98ab2a6dab3e2814d571a2c1ba8d4a6b220b1c960de01b2a798f7c2395bc`  
		Last Modified: Mon, 16 Nov 2026 18:10:19 GMT  
		Size: 9.8 MB (9800312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17e813f5f2be7dd564b420530cfe23cf1e14c3b03541e385476d6e01672c58ef`  
		Last Modified: Mon, 16 Nov 2026 18:10:18 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57a7ed96815635f3d8319b0a74009270e12c2f961e1325703a1f61a5d369b279`  
		Last Modified: Mon, 16 Nov 2026 18:10:20 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0670b14e5260cb1fc909541925dfeca904c319dd91dc1d65b6e5150382d10d0f`  
		Last Modified: Mon, 16 Nov 2026 18:10:20 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18479e61b030154c64f6069442d08da549ac7b67f1416835bcc07938c8ca9bf`  
		Last Modified: Mon, 16 Nov 2026 18:10:21 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4` - unknown; unknown

```console
$ docker pull crate@sha256:a994d9585befa39aa855c80a685c5debcfe2afa05f865b02c4ffeb16277dea29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6615029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54751f48b944da90b2b2bf92173a42d9ee553d316f5de647ca98190271fcd715`

```dockerfile
```

-	Layers:
	-	`sha256:a65104993122afb925d9e7516f86e4d2973cfb3f6716379f2adcf867024de7ec`  
		Last Modified: Mon, 16 Nov 2026 18:10:19 GMT  
		Size: 6.6 MB (6593685 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1af97deac924e2ae91cd1d9585cb9fc4b6628b5f3c3a0213def19d4b46bc817`  
		Last Modified: Mon, 16 Nov 2026 18:10:18 GMT  
		Size: 21.3 KB (21344 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.4` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:ffe5c2eb557f7eaeea3a6c81fe744b0ed3b868d1326eb60f79ec0970402df791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243728569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f48111ab5de5deaa8ad452fa8312908e80cbd9323d0efee299485211aab498d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Mon, 16 Nov 2026 17:36:53 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:36:53 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:09:33 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 16 Nov 2026 18:09:38 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.7.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.7.tar.gz.asc crate-6.4.7.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.7.tar.gz.asc     && tar -xf crate-6.4.7.tar.gz -C /crate --strip-components=1     && rm crate-6.4.7.tar.gz # buildkit
# Mon, 16 Nov 2026 18:09:41 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 16 Nov 2026 18:09:41 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:09:41 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 16 Nov 2026 18:09:41 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 16 Nov 2026 18:09:41 GMT
VOLUME [/data]
# Mon, 16 Nov 2026 18:09:42 GMT
WORKDIR /data
# Mon, 16 Nov 2026 18:09:42 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 16 Nov 2026 18:09:42 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 16 Nov 2026 18:09:42 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 16 Nov 2026 18:09:42 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-11-04T14:27:19.272135+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.7
# Mon, 16 Nov 2026 18:09:42 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 16 Nov 2026 18:09:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Nov 2026 18:09:42 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:31989d1c8aef0e5abdf91d088487aa9591087c7261c72f10511cbe27660133c8`  
		Last Modified: Mon, 16 Nov 2026 17:37:10 GMT  
		Size: 68.0 MB (67970468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bfca161bf545098967736b7b6069ce103d4279f4be37280abc1397ccb67eef0`  
		Last Modified: Mon, 16 Nov 2026 18:10:02 GMT  
		Size: 19.0 MB (19030498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df469433008f45cf60fb3ac13f2bd97c7e4f74ad6d6fdace0ad19704e2cfc47`  
		Last Modified: Mon, 16 Nov 2026 18:10:04 GMT  
		Size: 146.9 MB (146923348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b206851f4ac3a139a969fb5a62515eab5885742d7afc4c37b2c9dbd51275fa7`  
		Last Modified: Mon, 16 Nov 2026 18:10:02 GMT  
		Size: 9.8 MB (9802373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c662082a7837b93db46f52c6546bb19343d844e46602b59eb630db6d56ebfe8`  
		Last Modified: Mon, 16 Nov 2026 18:10:01 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8bd12b884af7546b9e96971dba0e6ed8a1ec0ab3a808f8e05aaecd101aba9a9`  
		Last Modified: Mon, 16 Nov 2026 18:10:02 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a102427245eaf663c588b518643151e766f27aeb37690b4cc144616f7e753f`  
		Last Modified: Mon, 16 Nov 2026 18:10:03 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef8149bdae1d1052c56875201cba53ef0ba219902b6c4a1ae29566891429a35`  
		Last Modified: Mon, 16 Nov 2026 18:10:03 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4` - unknown; unknown

```console
$ docker pull crate@sha256:eab5d4d1855b73273e7d8cd0f5681fedca32e2354be45fd45e3c09ce6a05b1d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6613065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e785e56eba606caba69f3f7f72b08da14326b84e6dd75ddab639bed4c042b5a`

```dockerfile
```

-	Layers:
	-	`sha256:045278723ce4bfff5e94d7f9084f9171ff7c302ff901374e2506ee2f2671f3dc`  
		Last Modified: Mon, 16 Nov 2026 18:10:01 GMT  
		Size: 6.6 MB (6591597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e1a17cad3f37c5fd20a5bbb55d6704a78f9444f9bfd559ba77c1c424dbcea4b`  
		Last Modified: Mon, 16 Nov 2026 18:10:01 GMT  
		Size: 21.5 KB (21468 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.4.7`

```console
$ docker pull crate@sha256:b8bcfbdceb423c95551bc5928c330f1dbfeab4f62c224260f8a8b92a2d985054
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.4.7` - linux; amd64

```console
$ docker pull crate@sha256:978bd9be5585eef8dc11d29043c858278ef25fb0ec3b160c2c18bea0da9115b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **247.5 MB (247466591 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ae8f859ea03d36466bc8c8db9445e3d5476160f9e6605b488d838784a8646801`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Mon, 16 Nov 2026 17:36:35 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:36:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:09:52 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 16 Nov 2026 18:09:57 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.7.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.7.tar.gz.asc crate-6.4.7.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.7.tar.gz.asc     && tar -xf crate-6.4.7.tar.gz -C /crate --strip-components=1     && rm crate-6.4.7.tar.gz # buildkit
# Mon, 16 Nov 2026 18:10:00 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 16 Nov 2026 18:10:00 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:10:00 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 16 Nov 2026 18:10:00 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 16 Nov 2026 18:10:00 GMT
VOLUME [/data]
# Mon, 16 Nov 2026 18:10:00 GMT
WORKDIR /data
# Mon, 16 Nov 2026 18:10:00 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 16 Nov 2026 18:10:00 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 16 Nov 2026 18:10:00 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 16 Nov 2026 18:10:00 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-11-04T14:27:19.272135+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.7
# Mon, 16 Nov 2026 18:10:00 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 16 Nov 2026 18:10:00 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Nov 2026 18:10:00 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:9e958ed8e511d2f9d2c9c7fe64d7300ea92a292244ec8702df311ba1c7647e00`  
		Last Modified: Mon, 16 Nov 2026 17:36:51 GMT  
		Size: 69.4 MB (69394245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:973a5f9333278c556fbb7921a436ad977042fcd8a0df01871edeedc7f8c93456`  
		Last Modified: Mon, 16 Nov 2026 18:10:19 GMT  
		Size: 19.0 MB (18994653 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:96e081fe072e8fd08e606ebcd519560eb507e415e7fc7e23e60fe813f7eb4408`  
		Last Modified: Mon, 16 Nov 2026 18:10:22 GMT  
		Size: 149.3 MB (149275503 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:806d98ab2a6dab3e2814d571a2c1ba8d4a6b220b1c960de01b2a798f7c2395bc`  
		Last Modified: Mon, 16 Nov 2026 18:10:19 GMT  
		Size: 9.8 MB (9800312 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:17e813f5f2be7dd564b420530cfe23cf1e14c3b03541e385476d6e01672c58ef`  
		Last Modified: Mon, 16 Nov 2026 18:10:18 GMT  
		Size: 125.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:57a7ed96815635f3d8319b0a74009270e12c2f961e1325703a1f61a5d369b279`  
		Last Modified: Mon, 16 Nov 2026 18:10:20 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0670b14e5260cb1fc909541925dfeca904c319dd91dc1d65b6e5150382d10d0f`  
		Last Modified: Mon, 16 Nov 2026 18:10:20 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b18479e61b030154c64f6069442d08da549ac7b67f1416835bcc07938c8ca9bf`  
		Last Modified: Mon, 16 Nov 2026 18:10:21 GMT  
		Size: 504.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4.7` - unknown; unknown

```console
$ docker pull crate@sha256:a994d9585befa39aa855c80a685c5debcfe2afa05f865b02c4ffeb16277dea29
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6615029 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54751f48b944da90b2b2bf92173a42d9ee553d316f5de647ca98190271fcd715`

```dockerfile
```

-	Layers:
	-	`sha256:a65104993122afb925d9e7516f86e4d2973cfb3f6716379f2adcf867024de7ec`  
		Last Modified: Mon, 16 Nov 2026 18:10:19 GMT  
		Size: 6.6 MB (6593685 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a1af97deac924e2ae91cd1d9585cb9fc4b6628b5f3c3a0213def19d4b46bc817`  
		Last Modified: Mon, 16 Nov 2026 18:10:18 GMT  
		Size: 21.3 KB (21344 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.4.7` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:ffe5c2eb557f7eaeea3a6c81fe744b0ed3b868d1326eb60f79ec0970402df791
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243728569 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9f48111ab5de5deaa8ad452fa8312908e80cbd9323d0efee299485211aab498d`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Mon, 16 Nov 2026 17:36:53 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:36:53 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:09:33 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 16 Nov 2026 18:09:38 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.4.7.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.4.7.tar.gz.asc crate-6.4.7.tar.gz     && rm -rf "$GNUPGHOME" crate-6.4.7.tar.gz.asc     && tar -xf crate-6.4.7.tar.gz -C /crate --strip-components=1     && rm crate-6.4.7.tar.gz # buildkit
# Mon, 16 Nov 2026 18:09:41 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 16 Nov 2026 18:09:41 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:09:41 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 16 Nov 2026 18:09:41 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 16 Nov 2026 18:09:41 GMT
VOLUME [/data]
# Mon, 16 Nov 2026 18:09:42 GMT
WORKDIR /data
# Mon, 16 Nov 2026 18:09:42 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 16 Nov 2026 18:09:42 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 16 Nov 2026 18:09:42 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 16 Nov 2026 18:09:42 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-11-04T14:27:19.272135+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.4.7
# Mon, 16 Nov 2026 18:09:42 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 16 Nov 2026 18:09:42 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Nov 2026 18:09:42 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:31989d1c8aef0e5abdf91d088487aa9591087c7261c72f10511cbe27660133c8`  
		Last Modified: Mon, 16 Nov 2026 17:37:10 GMT  
		Size: 68.0 MB (67970468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1bfca161bf545098967736b7b6069ce103d4279f4be37280abc1397ccb67eef0`  
		Last Modified: Mon, 16 Nov 2026 18:10:02 GMT  
		Size: 19.0 MB (19030498 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9df469433008f45cf60fb3ac13f2bd97c7e4f74ad6d6fdace0ad19704e2cfc47`  
		Last Modified: Mon, 16 Nov 2026 18:10:04 GMT  
		Size: 146.9 MB (146923348 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0b206851f4ac3a139a969fb5a62515eab5885742d7afc4c37b2c9dbd51275fa7`  
		Last Modified: Mon, 16 Nov 2026 18:10:02 GMT  
		Size: 9.8 MB (9802373 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9c662082a7837b93db46f52c6546bb19343d844e46602b59eb630db6d56ebfe8`  
		Last Modified: Mon, 16 Nov 2026 18:10:01 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8bd12b884af7546b9e96971dba0e6ed8a1ec0ab3a808f8e05aaecd101aba9a9`  
		Last Modified: Mon, 16 Nov 2026 18:10:02 GMT  
		Size: 262.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51a102427245eaf663c588b518643151e766f27aeb37690b4cc144616f7e753f`  
		Last Modified: Mon, 16 Nov 2026 18:10:03 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9ef8149bdae1d1052c56875201cba53ef0ba219902b6c4a1ae29566891429a35`  
		Last Modified: Mon, 16 Nov 2026 18:10:03 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.4.7` - unknown; unknown

```console
$ docker pull crate@sha256:eab5d4d1855b73273e7d8cd0f5681fedca32e2354be45fd45e3c09ce6a05b1d7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6613065 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1e785e56eba606caba69f3f7f72b08da14326b84e6dd75ddab639bed4c042b5a`

```dockerfile
```

-	Layers:
	-	`sha256:045278723ce4bfff5e94d7f9084f9171ff7c302ff901374e2506ee2f2671f3dc`  
		Last Modified: Mon, 16 Nov 2026 18:10:01 GMT  
		Size: 6.6 MB (6591597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5e1a17cad3f37c5fd20a5bbb55d6704a78f9444f9bfd559ba77c1c424dbcea4b`  
		Last Modified: Mon, 16 Nov 2026 18:10:01 GMT  
		Size: 21.5 KB (21468 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.5`

```console
$ docker pull crate@sha256:97a256cf4d5963442fae861249c4c4fb97d759ae2500272dbefe17859088651c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.5` - linux; amd64

```console
$ docker pull crate@sha256:674f6cb6097ed67f7d20ba9f3d69b3e944793a2a15b9113ca5339eab3c600d13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.5 MB (251485583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4c64976461dbf9bdef9404c5cda3ecb565adbc2d422e4411e79e2d5a8f2801`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Mon, 16 Nov 2026 17:36:35 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:36:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:09:39 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 16 Nov 2026 18:09:45 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.5.1.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.5.1.tar.gz.asc crate-6.5.1.tar.gz     && rm -rf "$GNUPGHOME" crate-6.5.1.tar.gz.asc     && tar -xf crate-6.5.1.tar.gz -C /crate --strip-components=1     && rm crate-6.5.1.tar.gz # buildkit
# Mon, 16 Nov 2026 18:09:47 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 16 Nov 2026 18:09:47 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:09:47 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 16 Nov 2026 18:09:47 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 16 Nov 2026 18:09:47 GMT
VOLUME [/data]
# Mon, 16 Nov 2026 18:09:47 GMT
WORKDIR /data
# Mon, 16 Nov 2026 18:09:47 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 16 Nov 2026 18:09:47 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 16 Nov 2026 18:09:47 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 16 Nov 2026 18:09:47 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-11-04T13:38:33.403858+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.5.1
# Mon, 16 Nov 2026 18:09:47 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 16 Nov 2026 18:09:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Nov 2026 18:09:47 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:9e958ed8e511d2f9d2c9c7fe64d7300ea92a292244ec8702df311ba1c7647e00`  
		Last Modified: Mon, 16 Nov 2026 17:36:51 GMT  
		Size: 69.4 MB (69394245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15044e4884750cc3909bf5ed825d8b6e8bbf35572963d236febf1bf18726d3e2`  
		Last Modified: Mon, 16 Nov 2026 18:10:09 GMT  
		Size: 19.0 MB (18994635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f618fe03ced426adfeb6fdf292daa4a617fbfa1ed902d75e594f4d5b4b82b2`  
		Last Modified: Mon, 16 Nov 2026 18:10:11 GMT  
		Size: 153.3 MB (153294357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f61318ed3ffd661b46426a5ed1c0b567174f40e2fdccd9d7fac2b2064a7e96bf`  
		Last Modified: Mon, 16 Nov 2026 18:10:08 GMT  
		Size: 9.8 MB (9800464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec22d852f8ce3e5ff0b08cd2ab59bebc422daab07a2bacef491736850570b617`  
		Last Modified: Mon, 16 Nov 2026 18:10:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:917e19b852582b6c9b3e500447cdcefa32eea84c7a8993d40a95e50e357e0902`  
		Last Modified: Mon, 16 Nov 2026 18:10:09 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9ee3631ac875ae040bb6e9ca19aef2b1495a5ad84324048d512fb9c9e21af19`  
		Last Modified: Mon, 16 Nov 2026 18:10:10 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aa4c6350cf6b0cc522c0951044a326249091b3d6d60922cd53bf469feb6d8ba`  
		Last Modified: Mon, 16 Nov 2026 18:10:10 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.5` - unknown; unknown

```console
$ docker pull crate@sha256:11f42f24d0ea512d6a400ab7ef96326e37f8ae15739f059e7b455bc550551c62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6612553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0451afb1db95e451027f4c3b382e1d2c5434a0f2c35e554ecd75a280ce5acf7f`

```dockerfile
```

-	Layers:
	-	`sha256:213106abb5b0db14ff701cc7fe9f904ac837ed8055225e7367bb8bb4de747844`  
		Last Modified: Mon, 16 Nov 2026 18:10:09 GMT  
		Size: 6.6 MB (6590914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ab5c7577ffe346b13b0a423643744aee46068480e9ec036c248a90ca17fc459`  
		Last Modified: Mon, 16 Nov 2026 18:10:08 GMT  
		Size: 21.6 KB (21639 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.5` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:5c1ad5364fd0be8ffddcdfc515d5a7fda2ff995fb2465a574cafc880e35c0e3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248254479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d675f7c2369ebe8734c56d3d2a634696a77431820f3263bd9afe165aad292aa1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Mon, 16 Nov 2026 17:36:53 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:36:53 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:09:30 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 16 Nov 2026 18:09:36 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.5.1.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.5.1.tar.gz.asc crate-6.5.1.tar.gz     && rm -rf "$GNUPGHOME" crate-6.5.1.tar.gz.asc     && tar -xf crate-6.5.1.tar.gz -C /crate --strip-components=1     && rm crate-6.5.1.tar.gz # buildkit
# Mon, 16 Nov 2026 18:09:39 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 16 Nov 2026 18:09:39 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:09:39 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 16 Nov 2026 18:09:39 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 16 Nov 2026 18:09:39 GMT
VOLUME [/data]
# Mon, 16 Nov 2026 18:09:39 GMT
WORKDIR /data
# Mon, 16 Nov 2026 18:09:39 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 16 Nov 2026 18:09:39 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 16 Nov 2026 18:09:39 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 16 Nov 2026 18:09:39 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-11-04T13:38:33.403858+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.5.1
# Mon, 16 Nov 2026 18:09:39 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 16 Nov 2026 18:09:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Nov 2026 18:09:39 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:31989d1c8aef0e5abdf91d088487aa9591087c7261c72f10511cbe27660133c8`  
		Last Modified: Mon, 16 Nov 2026 17:37:10 GMT  
		Size: 68.0 MB (67970468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a8dc6786ef6b9049ac6fba9504dff7a5f4a54df987d80b4a6dfc9a0b8c9fad`  
		Last Modified: Mon, 16 Nov 2026 18:10:00 GMT  
		Size: 19.0 MB (19030514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689ef0d97cf75f5e0fbd76e5a8d8ad00fad59ff06273d671f018ddccaffa811f`  
		Last Modified: Mon, 16 Nov 2026 18:10:03 GMT  
		Size: 151.4 MB (151448878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf37bb8e19a11e968f943ca937aa6e30768b4061275c9022316df83a0f81f234`  
		Last Modified: Mon, 16 Nov 2026 18:10:00 GMT  
		Size: 9.8 MB (9802738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f4ba727f301fbd692b953520030f31286b82b68452d7ddab3a9dbf586d768e0`  
		Last Modified: Mon, 16 Nov 2026 18:09:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de623e629b2525d90a7f406ae6c4c3f5c67d820ba6302d43421a917f1b069439`  
		Last Modified: Mon, 16 Nov 2026 18:10:01 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e78e22e66994f47bc3675e57f6b1a02d37214cc7fe04cfc7ba4af5317dd5a57e`  
		Last Modified: Mon, 16 Nov 2026 18:10:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e7dca9b4126afdf568d565d8d147176a31c3bff2a020a5cc056d4298916724`  
		Last Modified: Mon, 16 Nov 2026 18:10:02 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.5` - unknown; unknown

```console
$ docker pull crate@sha256:469fbc07ebd78f100b331b0e10ef11006508c68353f110d9acbd0ebf07306c08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6610612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21bb4865740011a8ed64838e2c7c73d1eed9bfed5317136b646c43e7ebb5c887`

```dockerfile
```

-	Layers:
	-	`sha256:a2bdf34df33715d21a855d09dfae93290e8bdafe0cbf8ab81c25fcd7036741df`  
		Last Modified: Mon, 16 Nov 2026 18:10:00 GMT  
		Size: 6.6 MB (6588836 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d362c7f723011938f0fbd94462780aaf1b21d9621ff00342fdd0828c2fd2059d`  
		Last Modified: Mon, 16 Nov 2026 18:09:59 GMT  
		Size: 21.8 KB (21776 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:6.5.1`

```console
$ docker pull crate@sha256:97a256cf4d5963442fae861249c4c4fb97d759ae2500272dbefe17859088651c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:6.5.1` - linux; amd64

```console
$ docker pull crate@sha256:674f6cb6097ed67f7d20ba9f3d69b3e944793a2a15b9113ca5339eab3c600d13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.5 MB (251485583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4c64976461dbf9bdef9404c5cda3ecb565adbc2d422e4411e79e2d5a8f2801`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Mon, 16 Nov 2026 17:36:35 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:36:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:09:39 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 16 Nov 2026 18:09:45 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.5.1.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.5.1.tar.gz.asc crate-6.5.1.tar.gz     && rm -rf "$GNUPGHOME" crate-6.5.1.tar.gz.asc     && tar -xf crate-6.5.1.tar.gz -C /crate --strip-components=1     && rm crate-6.5.1.tar.gz # buildkit
# Mon, 16 Nov 2026 18:09:47 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 16 Nov 2026 18:09:47 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:09:47 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 16 Nov 2026 18:09:47 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 16 Nov 2026 18:09:47 GMT
VOLUME [/data]
# Mon, 16 Nov 2026 18:09:47 GMT
WORKDIR /data
# Mon, 16 Nov 2026 18:09:47 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 16 Nov 2026 18:09:47 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 16 Nov 2026 18:09:47 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 16 Nov 2026 18:09:47 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-11-04T13:38:33.403858+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.5.1
# Mon, 16 Nov 2026 18:09:47 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 16 Nov 2026 18:09:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Nov 2026 18:09:47 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:9e958ed8e511d2f9d2c9c7fe64d7300ea92a292244ec8702df311ba1c7647e00`  
		Last Modified: Mon, 16 Nov 2026 17:36:51 GMT  
		Size: 69.4 MB (69394245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15044e4884750cc3909bf5ed825d8b6e8bbf35572963d236febf1bf18726d3e2`  
		Last Modified: Mon, 16 Nov 2026 18:10:09 GMT  
		Size: 19.0 MB (18994635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f618fe03ced426adfeb6fdf292daa4a617fbfa1ed902d75e594f4d5b4b82b2`  
		Last Modified: Mon, 16 Nov 2026 18:10:11 GMT  
		Size: 153.3 MB (153294357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f61318ed3ffd661b46426a5ed1c0b567174f40e2fdccd9d7fac2b2064a7e96bf`  
		Last Modified: Mon, 16 Nov 2026 18:10:08 GMT  
		Size: 9.8 MB (9800464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec22d852f8ce3e5ff0b08cd2ab59bebc422daab07a2bacef491736850570b617`  
		Last Modified: Mon, 16 Nov 2026 18:10:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:917e19b852582b6c9b3e500447cdcefa32eea84c7a8993d40a95e50e357e0902`  
		Last Modified: Mon, 16 Nov 2026 18:10:09 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9ee3631ac875ae040bb6e9ca19aef2b1495a5ad84324048d512fb9c9e21af19`  
		Last Modified: Mon, 16 Nov 2026 18:10:10 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aa4c6350cf6b0cc522c0951044a326249091b3d6d60922cd53bf469feb6d8ba`  
		Last Modified: Mon, 16 Nov 2026 18:10:10 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.5.1` - unknown; unknown

```console
$ docker pull crate@sha256:11f42f24d0ea512d6a400ab7ef96326e37f8ae15739f059e7b455bc550551c62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6612553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0451afb1db95e451027f4c3b382e1d2c5434a0f2c35e554ecd75a280ce5acf7f`

```dockerfile
```

-	Layers:
	-	`sha256:213106abb5b0db14ff701cc7fe9f904ac837ed8055225e7367bb8bb4de747844`  
		Last Modified: Mon, 16 Nov 2026 18:10:09 GMT  
		Size: 6.6 MB (6590914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ab5c7577ffe346b13b0a423643744aee46068480e9ec036c248a90ca17fc459`  
		Last Modified: Mon, 16 Nov 2026 18:10:08 GMT  
		Size: 21.6 KB (21639 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:6.5.1` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:5c1ad5364fd0be8ffddcdfc515d5a7fda2ff995fb2465a574cafc880e35c0e3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248254479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d675f7c2369ebe8734c56d3d2a634696a77431820f3263bd9afe165aad292aa1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Mon, 16 Nov 2026 17:36:53 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:36:53 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:09:30 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 16 Nov 2026 18:09:36 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.5.1.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.5.1.tar.gz.asc crate-6.5.1.tar.gz     && rm -rf "$GNUPGHOME" crate-6.5.1.tar.gz.asc     && tar -xf crate-6.5.1.tar.gz -C /crate --strip-components=1     && rm crate-6.5.1.tar.gz # buildkit
# Mon, 16 Nov 2026 18:09:39 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 16 Nov 2026 18:09:39 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:09:39 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 16 Nov 2026 18:09:39 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 16 Nov 2026 18:09:39 GMT
VOLUME [/data]
# Mon, 16 Nov 2026 18:09:39 GMT
WORKDIR /data
# Mon, 16 Nov 2026 18:09:39 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 16 Nov 2026 18:09:39 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 16 Nov 2026 18:09:39 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 16 Nov 2026 18:09:39 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-11-04T13:38:33.403858+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.5.1
# Mon, 16 Nov 2026 18:09:39 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 16 Nov 2026 18:09:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Nov 2026 18:09:39 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:31989d1c8aef0e5abdf91d088487aa9591087c7261c72f10511cbe27660133c8`  
		Last Modified: Mon, 16 Nov 2026 17:37:10 GMT  
		Size: 68.0 MB (67970468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a8dc6786ef6b9049ac6fba9504dff7a5f4a54df987d80b4a6dfc9a0b8c9fad`  
		Last Modified: Mon, 16 Nov 2026 18:10:00 GMT  
		Size: 19.0 MB (19030514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689ef0d97cf75f5e0fbd76e5a8d8ad00fad59ff06273d671f018ddccaffa811f`  
		Last Modified: Mon, 16 Nov 2026 18:10:03 GMT  
		Size: 151.4 MB (151448878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf37bb8e19a11e968f943ca937aa6e30768b4061275c9022316df83a0f81f234`  
		Last Modified: Mon, 16 Nov 2026 18:10:00 GMT  
		Size: 9.8 MB (9802738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f4ba727f301fbd692b953520030f31286b82b68452d7ddab3a9dbf586d768e0`  
		Last Modified: Mon, 16 Nov 2026 18:09:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de623e629b2525d90a7f406ae6c4c3f5c67d820ba6302d43421a917f1b069439`  
		Last Modified: Mon, 16 Nov 2026 18:10:01 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e78e22e66994f47bc3675e57f6b1a02d37214cc7fe04cfc7ba4af5317dd5a57e`  
		Last Modified: Mon, 16 Nov 2026 18:10:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e7dca9b4126afdf568d565d8d147176a31c3bff2a020a5cc056d4298916724`  
		Last Modified: Mon, 16 Nov 2026 18:10:02 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:6.5.1` - unknown; unknown

```console
$ docker pull crate@sha256:469fbc07ebd78f100b331b0e10ef11006508c68353f110d9acbd0ebf07306c08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6610612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21bb4865740011a8ed64838e2c7c73d1eed9bfed5317136b646c43e7ebb5c887`

```dockerfile
```

-	Layers:
	-	`sha256:a2bdf34df33715d21a855d09dfae93290e8bdafe0cbf8ab81c25fcd7036741df`  
		Last Modified: Mon, 16 Nov 2026 18:10:00 GMT  
		Size: 6.6 MB (6588836 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d362c7f723011938f0fbd94462780aaf1b21d9621ff00342fdd0828c2fd2059d`  
		Last Modified: Mon, 16 Nov 2026 18:09:59 GMT  
		Size: 21.8 KB (21776 bytes)  
		MIME: application/vnd.in-toto+json

## `crate:latest`

```console
$ docker pull crate@sha256:97a256cf4d5963442fae861249c4c4fb97d759ae2500272dbefe17859088651c
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `crate:latest` - linux; amd64

```console
$ docker pull crate@sha256:674f6cb6097ed67f7d20ba9f3d69b3e944793a2a15b9113ca5339eab3c600d13
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **251.5 MB (251485583 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1d4c64976461dbf9bdef9404c5cda3ecb565adbc2d422e4411e79e2d5a8f2801`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Mon, 16 Nov 2026 17:36:35 GMT
ADD almalinux-10-kitten-default-amd64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:36:35 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:09:39 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 16 Nov 2026 18:09:45 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.5.1.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.5.1.tar.gz.asc crate-6.5.1.tar.gz     && rm -rf "$GNUPGHOME" crate-6.5.1.tar.gz.asc     && tar -xf crate-6.5.1.tar.gz -C /crate --strip-components=1     && rm crate-6.5.1.tar.gz # buildkit
# Mon, 16 Nov 2026 18:09:47 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 16 Nov 2026 18:09:47 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:09:47 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 16 Nov 2026 18:09:47 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 16 Nov 2026 18:09:47 GMT
VOLUME [/data]
# Mon, 16 Nov 2026 18:09:47 GMT
WORKDIR /data
# Mon, 16 Nov 2026 18:09:47 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 16 Nov 2026 18:09:47 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 16 Nov 2026 18:09:47 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 16 Nov 2026 18:09:47 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-11-04T13:38:33.403858+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.5.1
# Mon, 16 Nov 2026 18:09:47 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 16 Nov 2026 18:09:47 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Nov 2026 18:09:47 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:9e958ed8e511d2f9d2c9c7fe64d7300ea92a292244ec8702df311ba1c7647e00`  
		Last Modified: Mon, 16 Nov 2026 17:36:51 GMT  
		Size: 69.4 MB (69394245 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:15044e4884750cc3909bf5ed825d8b6e8bbf35572963d236febf1bf18726d3e2`  
		Last Modified: Mon, 16 Nov 2026 18:10:09 GMT  
		Size: 19.0 MB (18994635 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0f618fe03ced426adfeb6fdf292daa4a617fbfa1ed902d75e594f4d5b4b82b2`  
		Last Modified: Mon, 16 Nov 2026 18:10:11 GMT  
		Size: 153.3 MB (153294357 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f61318ed3ffd661b46426a5ed1c0b567174f40e2fdccd9d7fac2b2064a7e96bf`  
		Last Modified: Mon, 16 Nov 2026 18:10:08 GMT  
		Size: 9.8 MB (9800464 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ec22d852f8ce3e5ff0b08cd2ab59bebc422daab07a2bacef491736850570b617`  
		Last Modified: Mon, 16 Nov 2026 18:10:08 GMT  
		Size: 127.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:917e19b852582b6c9b3e500447cdcefa32eea84c7a8993d40a95e50e357e0902`  
		Last Modified: Mon, 16 Nov 2026 18:10:09 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b9ee3631ac875ae040bb6e9ca19aef2b1495a5ad84324048d512fb9c9e21af19`  
		Last Modified: Mon, 16 Nov 2026 18:10:10 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4aa4c6350cf6b0cc522c0951044a326249091b3d6d60922cd53bf469feb6d8ba`  
		Last Modified: Mon, 16 Nov 2026 18:10:10 GMT  
		Size: 506.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:11f42f24d0ea512d6a400ab7ef96326e37f8ae15739f059e7b455bc550551c62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6612553 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0451afb1db95e451027f4c3b382e1d2c5434a0f2c35e554ecd75a280ce5acf7f`

```dockerfile
```

-	Layers:
	-	`sha256:213106abb5b0db14ff701cc7fe9f904ac837ed8055225e7367bb8bb4de747844`  
		Last Modified: Mon, 16 Nov 2026 18:10:09 GMT  
		Size: 6.6 MB (6590914 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1ab5c7577ffe346b13b0a423643744aee46068480e9ec036c248a90ca17fc459`  
		Last Modified: Mon, 16 Nov 2026 18:10:08 GMT  
		Size: 21.6 KB (21639 bytes)  
		MIME: application/vnd.in-toto+json

### `crate:latest` - linux; arm64 variant v8

```console
$ docker pull crate@sha256:5c1ad5364fd0be8ffddcdfc515d5a7fda2ff995fb2465a574cafc880e35c0e3c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **248.3 MB (248254479 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d675f7c2369ebe8734c56d3d2a634696a77431820f3263bd9afe165aad292aa1`
-	Entrypoint: `["\/docker-entrypoint.sh"]`
-	Default Command: `["crate"]`

```dockerfile
# Mon, 16 Nov 2026 17:36:53 GMT
ADD almalinux-10-kitten-default-arm64.tar.xz / # buildkit
# Mon, 16 Nov 2026 17:36:53 GMT
CMD ["/bin/bash"]
# Mon, 16 Nov 2026 18:09:30 GMT
RUN dnf install --nodocs --assumeyes gzip python3 python3-pip shadow-utils tar util-linux gnupg     && dnf clean all     && rm -rf /var/cache/yum # buildkit
# Mon, 16 Nov 2026 18:09:36 GMT
RUN groupadd crate     && useradd -u 1000 -g crate -d /crate crate     && export PLATFORM="$(         case $(uname --m) in             x86_64)  echo x64_linux ;;             aarch64) echo aarch64_linux ;;         esac)"     && export CRATE_URL=https://cdn.crate.io/downloads/releases/cratedb/${PLATFORM}/crate-6.5.1.tar.gz     && curl -fSL -O ${CRATE_URL}     && curl -fSL -O ${CRATE_URL}.asc     && export GNUPGHOME="$(mktemp -d)"     && gpg --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 90C23FC6585BC0717F8FBFC37FAAE51A06F6EAEB     && gpg --batch --verify crate-6.5.1.tar.gz.asc crate-6.5.1.tar.gz     && rm -rf "$GNUPGHOME" crate-6.5.1.tar.gz.asc     && tar -xf crate-6.5.1.tar.gz -C /crate --strip-components=1     && rm crate-6.5.1.tar.gz # buildkit
# Mon, 16 Nov 2026 18:09:39 GMT
RUN python3 -m pip install 'crash==0.32.0' # buildkit
# Mon, 16 Nov 2026 18:09:39 GMT
ENV PATH=/crate/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 16 Nov 2026 18:09:39 GMT
ENV CRATE_HEAP_SIZE=512M
# Mon, 16 Nov 2026 18:09:39 GMT
RUN mkdir -p /data/data /data/log # buildkit
# Mon, 16 Nov 2026 18:09:39 GMT
VOLUME [/data]
# Mon, 16 Nov 2026 18:09:39 GMT
WORKDIR /data
# Mon, 16 Nov 2026 18:09:39 GMT
EXPOSE map[4200/tcp:{} 4300/tcp:{} 5432/tcp:{}]
# Mon, 16 Nov 2026 18:09:39 GMT
COPY --chown=1000:0 config/crate.yml /crate/config/crate.yml # buildkit
# Mon, 16 Nov 2026 18:09:39 GMT
COPY --chown=1000:0 config/log4j2.properties /crate/config/log4j2.properties # buildkit
# Mon, 16 Nov 2026 18:09:39 GMT
LABEL maintainer=Crate.io <office@crate.io> org.opencontainers.image.created=2026-11-04T13:38:33.403858+00:00 org.opencontainers.image.title=crate org.opencontainers.image.description=CrateDB is a distributed SQL database that handles massive amounts of machine data in real-time. org.opencontainers.image.url=https://crate.io/products/cratedb/ org.opencontainers.image.source=https://github.com/crate/docker-crate org.opencontainers.image.vendor=Crate.io org.opencontainers.image.version=6.5.1
# Mon, 16 Nov 2026 18:09:39 GMT
COPY docker-entrypoint.sh / # buildkit
# Mon, 16 Nov 2026 18:09:39 GMT
ENTRYPOINT ["/docker-entrypoint.sh"]
# Mon, 16 Nov 2026 18:09:39 GMT
CMD ["crate"]
```

-	Layers:
	-	`sha256:31989d1c8aef0e5abdf91d088487aa9591087c7261c72f10511cbe27660133c8`  
		Last Modified: Mon, 16 Nov 2026 17:37:10 GMT  
		Size: 68.0 MB (67970468 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d6a8dc6786ef6b9049ac6fba9504dff7a5f4a54df987d80b4a6dfc9a0b8c9fad`  
		Last Modified: Mon, 16 Nov 2026 18:10:00 GMT  
		Size: 19.0 MB (19030514 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:689ef0d97cf75f5e0fbd76e5a8d8ad00fad59ff06273d671f018ddccaffa811f`  
		Last Modified: Mon, 16 Nov 2026 18:10:03 GMT  
		Size: 151.4 MB (151448878 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bf37bb8e19a11e968f943ca937aa6e30768b4061275c9022316df83a0f81f234`  
		Last Modified: Mon, 16 Nov 2026 18:10:00 GMT  
		Size: 9.8 MB (9802738 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f4ba727f301fbd692b953520030f31286b82b68452d7ddab3a9dbf586d768e0`  
		Last Modified: Mon, 16 Nov 2026 18:09:59 GMT  
		Size: 128.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:de623e629b2525d90a7f406ae6c4c3f5c67d820ba6302d43421a917f1b069439`  
		Last Modified: Mon, 16 Nov 2026 18:10:01 GMT  
		Size: 263.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e78e22e66994f47bc3675e57f6b1a02d37214cc7fe04cfc7ba4af5317dd5a57e`  
		Last Modified: Mon, 16 Nov 2026 18:10:02 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71e7dca9b4126afdf568d565d8d147176a31c3bff2a020a5cc056d4298916724`  
		Last Modified: Mon, 16 Nov 2026 18:10:02 GMT  
		Size: 505.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `crate:latest` - unknown; unknown

```console
$ docker pull crate@sha256:469fbc07ebd78f100b331b0e10ef11006508c68353f110d9acbd0ebf07306c08
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **6.6 MB (6610612 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:21bb4865740011a8ed64838e2c7c73d1eed9bfed5317136b646c43e7ebb5c887`

```dockerfile
```

-	Layers:
	-	`sha256:a2bdf34df33715d21a855d09dfae93290e8bdafe0cbf8ab81c25fcd7036741df`  
		Last Modified: Mon, 16 Nov 2026 18:10:00 GMT  
		Size: 6.6 MB (6588836 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d362c7f723011938f0fbd94462780aaf1b21d9621ff00342fdd0828c2fd2059d`  
		Last Modified: Mon, 16 Nov 2026 18:09:59 GMT  
		Size: 21.8 KB (21776 bytes)  
		MIME: application/vnd.in-toto+json
