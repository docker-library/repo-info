<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `kibana`

-	[`kibana:7.17.8`](#kibana7178)
-	[`kibana:8.6.0`](#kibana860)

## `kibana:7.17.8`

```console
$ docker pull kibana@sha256:c5781ba340ef89d630f9f05a904579d9cf614c4188920b8e4f293ce87000eebe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `kibana:7.17.8` - linux; amd64

```console
$ docker pull kibana@sha256:0732aac8c9f619102bfb38abf2de7eb9c3fe9ba0f13db71a8478df92415c5856
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **329.9 MB (329947475 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89e0bd482ac7a01ef8249fa76f64832af2b9dc12525f030ce9df4fde0806de90`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 25 Oct 2022 01:53:34 GMT
ADD file:7633003155a1059419aa1a6756fafb6e4f419d65bff7feb7c945de1e29dccb1e in / 
# Tue, 25 Oct 2022 01:53:35 GMT
CMD ["bash"]
# Fri, 02 Dec 2022 12:36:45 GMT
EXPOSE map[5601/tcp:{}]
# Fri, 02 Dec 2022 12:36:45 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update  &&       apt-get upgrade -y  &&       apt-get install -y --no-install-recommends        fontconfig fonts-liberation libnss3 libfontconfig1 ca-certificates curl &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* && exit_code=0 && break || exit_code=$? && echo "apt-get error: retry $iter in 10s" &&       sleep 10;     done;     (exit $exit_code) # buildkit
# Fri, 02 Dec 2022 12:36:47 GMT
RUN set -e ;     TINI_BIN="" ;     case "$(arch)" in         aarch64)             TINI_BIN='tini-arm64' ;             ;;         x86_64)             TINI_BIN='tini-amd64' ;             ;;         *) echo >&2 "Unsupported architecture $(arch)" ; exit 1 ;;     esac ;   TINI_VERSION='v0.19.0' ;   curl --retry 8 -S -L -O "https://github.com/krallin/tini/releases/download/${TINI_VERSION}/${TINI_BIN}" ;   curl --retry 8 -S -L -O "https://github.com/krallin/tini/releases/download/${TINI_VERSION}/${TINI_BIN}.sha256sum" ;   sha256sum -c "${TINI_BIN}.sha256sum" ;   rm "${TINI_BIN}.sha256sum" ;   mv "${TINI_BIN}" /bin/tini ;   chmod +x /bin/tini # buildkit
# Fri, 02 Dec 2022 12:36:47 GMT
RUN mkdir /usr/share/fonts/local # buildkit
# Fri, 02 Dec 2022 12:36:48 GMT
RUN curl --retry 8 -S -L -o /usr/share/fonts/local/NotoSansCJK-Regular.ttc https://github.com/googlefonts/noto-cjk/raw/NotoSansV2.001/NotoSansCJK-Regular.ttc # buildkit
# Fri, 02 Dec 2022 12:36:48 GMT
RUN echo "5dcd1c336cc9344cb77c03a0cd8982ca8a7dc97d620fd6c9c434e02dcb1ceeb3  /usr/share/fonts/local/NotoSansCJK-Regular.ttc" | sha256sum -c - # buildkit
# Fri, 02 Dec 2022 12:36:49 GMT
RUN fc-cache -v # buildkit
# Fri, 02 Dec 2022 12:37:48 GMT
COPY /usr/share/kibana /usr/share/kibana # buildkit
# Fri, 02 Dec 2022 12:37:48 GMT
WORKDIR /usr/share/kibana
# Fri, 02 Dec 2022 12:37:48 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Fri, 02 Dec 2022 12:37:48 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 02 Dec 2022 12:37:48 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Dec 2022 12:37:48 GMT
COPY config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Fri, 02 Dec 2022 12:37:48 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Fri, 02 Dec 2022 12:37:49 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Fri, 02 Dec 2022 12:37:50 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Fri, 02 Dec 2022 12:37:50 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Fri, 02 Dec 2022 12:37:50 GMT
LABEL org.label-schema.build-date=2022-12-02T12:10:17.323Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=6932e2bff5c5d630510e463852e16423ff8db3fb org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=7.17.8 org.opencontainers.image.created=2022-12-02T12:10:17.323Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=6932e2bff5c5d630510e463852e16423ff8db3fb org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=7.17.8
# Fri, 02 Dec 2022 12:37:50 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Fri, 02 Dec 2022 12:37:50 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Fri, 02 Dec 2022 12:37:50 GMT
USER kibana
```

-	Layers:
	-	`sha256:eaead16dc43bb8811d4ff450935d607f9ba4baffda4fc110cc402fa43f601d83`  
		Last Modified: Fri, 21 Oct 2022 03:03:39 GMT  
		Size: 28.6 MB (28577834 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c04b48ebd73430801c941d160ca56aa6c4efbbb013a35b346e08133d50ba341c`  
		Last Modified: Thu, 08 Dec 2022 19:24:30 GMT  
		Size: 11.7 MB (11714842 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:defe962e211750322d6496dca4e37450f4dc3897683b774614eb927b29b73b6f`  
		Last Modified: Thu, 08 Dec 2022 19:24:28 GMT  
		Size: 9.5 KB (9530 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:15f0651d1c1e372d4706330ac8723e1fa4eaa0c6876adc5438d9d2ab806ff74d`  
		Last Modified: Thu, 08 Dec 2022 19:24:27 GMT  
		Size: 158.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6263e00ebb0160570401c83c36bd4ead554c0a6ed8336339e28d8f1e3207740c`  
		Last Modified: Thu, 08 Dec 2022 19:24:27 GMT  
		Size: 16.5 MB (16460488 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:954d70cf9c1cc22e9792ee52012e642b78231b1fcfa82716888a415f0c24d7b5`  
		Last Modified: Thu, 08 Dec 2022 19:24:26 GMT  
		Size: 5.3 KB (5287 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:83c87fe21ee7582a0a851ebb66fdb4802178000c1e5eca4f18de0d224c420f63`  
		Last Modified: Thu, 08 Dec 2022 19:24:58 GMT  
		Size: 273.0 MB (272982631 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:e28cfeb29d506090ae27508637a9db02dc53b1cfe6d9c293771a912bed42471f`  
		Last Modified: Thu, 08 Dec 2022 19:24:25 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ecaf7a5da8fdcf83439f99f3c0cc94fb9a06be2b40572adfe818cb7b605d276`  
		Last Modified: Thu, 08 Dec 2022 19:24:23 GMT  
		Size: 396.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9bee9f5efc3be5a5754aacfbcf951bafef9d133002eb4e9a322e8abc6454ccd5`  
		Last Modified: Thu, 08 Dec 2022 19:24:23 GMT  
		Size: 4.5 KB (4504 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9691dcae52725cf4a966887b4769dc1f45be1727162c822530eae6029e1f091a`  
		Last Modified: Thu, 08 Dec 2022 19:24:23 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:aced9fc65582598057ae1bd23d915aed0662b5ea7dade802351c94085f5a7528`  
		Last Modified: Thu, 08 Dec 2022 19:24:23 GMT  
		Size: 189.4 KB (189393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f0c7dcac3cb19995076be632f659a17314af4183972dd66e1070f7c3ea050377`  
		Last Modified: Thu, 08 Dec 2022 19:24:26 GMT  
		Size: 1.8 KB (1817 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kibana:7.17.8` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:bb5babf893769e924dbe713903ae128f3c19a6a9b742234d0fb0c30292588300
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **344.9 MB (344853258 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:59d0b7c25750636dbb7316253e0b280add79abc4c00bb088ffee55460259d370`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Tue, 25 Oct 2022 05:54:59 GMT
ADD file:6784d0c4432f4f32d6ee4d96eedf33ea82d88ef6901c763665fa77c842621999 in / 
# Tue, 25 Oct 2022 05:54:59 GMT
CMD ["bash"]
# Fri, 02 Dec 2022 12:39:52 GMT
EXPOSE map[5601/tcp:{}]
# Fri, 02 Dec 2022 12:39:52 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update  &&       apt-get upgrade -y  &&       apt-get install -y --no-install-recommends        fontconfig fonts-liberation libnss3 libfontconfig1 ca-certificates curl &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* && exit_code=0 && break || exit_code=$? && echo "apt-get error: retry $iter in 10s" &&       sleep 10;     done;     (exit $exit_code) # buildkit
# Fri, 02 Dec 2022 12:39:54 GMT
RUN set -e ;     TINI_BIN="" ;     case "$(arch)" in         aarch64)             TINI_BIN='tini-arm64' ;             ;;         x86_64)             TINI_BIN='tini-amd64' ;             ;;         *) echo >&2 "Unsupported architecture $(arch)" ; exit 1 ;;     esac ;   TINI_VERSION='v0.19.0' ;   curl --retry 8 -S -L -O "https://github.com/krallin/tini/releases/download/${TINI_VERSION}/${TINI_BIN}" ;   curl --retry 8 -S -L -O "https://github.com/krallin/tini/releases/download/${TINI_VERSION}/${TINI_BIN}.sha256sum" ;   sha256sum -c "${TINI_BIN}.sha256sum" ;   rm "${TINI_BIN}.sha256sum" ;   mv "${TINI_BIN}" /bin/tini ;   chmod +x /bin/tini # buildkit
# Fri, 02 Dec 2022 12:39:54 GMT
RUN mkdir /usr/share/fonts/local # buildkit
# Fri, 02 Dec 2022 12:39:57 GMT
RUN curl --retry 8 -S -L -o /usr/share/fonts/local/NotoSansCJK-Regular.ttc https://github.com/googlefonts/noto-cjk/raw/NotoSansV2.001/NotoSansCJK-Regular.ttc # buildkit
# Fri, 02 Dec 2022 12:39:57 GMT
RUN echo "5dcd1c336cc9344cb77c03a0cd8982ca8a7dc97d620fd6c9c434e02dcb1ceeb3  /usr/share/fonts/local/NotoSansCJK-Regular.ttc" | sha256sum -c - # buildkit
# Fri, 02 Dec 2022 12:39:58 GMT
RUN fc-cache -v # buildkit
# Fri, 02 Dec 2022 12:40:56 GMT
COPY /usr/share/kibana /usr/share/kibana # buildkit
# Fri, 02 Dec 2022 12:40:56 GMT
WORKDIR /usr/share/kibana
# Fri, 02 Dec 2022 12:40:56 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Fri, 02 Dec 2022 12:40:56 GMT
ENV ELASTIC_CONTAINER=true
# Fri, 02 Dec 2022 12:40:56 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Dec 2022 12:40:56 GMT
COPY config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Fri, 02 Dec 2022 12:40:56 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Fri, 02 Dec 2022 12:40:57 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Fri, 02 Dec 2022 12:40:58 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Fri, 02 Dec 2022 12:40:59 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Fri, 02 Dec 2022 12:40:59 GMT
LABEL org.label-schema.build-date=2022-12-02T12:10:17.323Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=6932e2bff5c5d630510e463852e16423ff8db3fb org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=7.17.8 org.opencontainers.image.created=2022-12-02T12:10:17.323Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=6932e2bff5c5d630510e463852e16423ff8db3fb org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=7.17.8
# Fri, 02 Dec 2022 12:40:59 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Fri, 02 Dec 2022 12:40:59 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Fri, 02 Dec 2022 12:40:59 GMT
USER kibana
```

-	Layers:
	-	`sha256:4e7e0215f4adc2c48ad9cb3b3781e21d474b477587f85682c2e2975ae91dce9d`  
		Last Modified: Tue, 25 Oct 2022 05:55:59 GMT  
		Size: 27.2 MB (27195998 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93a7bcc73093cd2bfbe3f38c93710b78ba17a7f74f69a0ec9273e570d813b340`  
		Last Modified: Thu, 08 Dec 2022 18:43:30 GMT  
		Size: 11.6 MB (11562259 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:274f7f47ce5a2e9347133465afb0f49bbfee9b5b8b5cba988ba6b0e8a769f995`  
		Last Modified: Thu, 08 Dec 2022 18:43:27 GMT  
		Size: 9.1 KB (9100 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4277c11787d8984dd6330fcb268ce5e9954d66379b35b967f6c84526aa8a99d6`  
		Last Modified: Thu, 08 Dec 2022 18:43:26 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:91f984ea1d55ef1e447e4d751e7c1326142f16e731f25f1785d1d7b262c4f663`  
		Last Modified: Thu, 08 Dec 2022 18:43:26 GMT  
		Size: 16.5 MB (16460475 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1e49f27af693d93f12853b9ab41a56f591c97ff59d10f3b29ba0ecd841cfc540`  
		Last Modified: Thu, 08 Dec 2022 18:43:24 GMT  
		Size: 5.3 KB (5294 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d6d7112d02d9fce86db5a9018a5222bf35b557c944aa97c83ef84433bcb94d88`  
		Last Modified: Thu, 08 Dec 2022 18:43:52 GMT  
		Size: 289.4 MB (289429253 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:44b6a5cf98a8a0bfcceeca20266c7bf448ea10c3211a9fe486bc98088beb40fc`  
		Last Modified: Thu, 08 Dec 2022 18:43:24 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a267bd5a81889e6e47acb556ac3cd423ab48375f30e6da340ae869b98d19ad25`  
		Last Modified: Thu, 08 Dec 2022 18:43:22 GMT  
		Size: 397.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b26de877b72d79ad980ceab8446c972a59eb0e308a9349e03faa1a57aea196d7`  
		Last Modified: Thu, 08 Dec 2022 18:43:22 GMT  
		Size: 4.5 KB (4506 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:145b7e9f22349c3402de8d54e621ea853753c4e3ce21b95f3ec2a251129cb607`  
		Last Modified: Thu, 08 Dec 2022 18:43:22 GMT  
		Size: 399.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a0025d6ac508f7857ab776230634817d719502b3e9a5e87373a9abe989642a5`  
		Last Modified: Thu, 08 Dec 2022 18:43:22 GMT  
		Size: 183.4 KB (183393 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:485fb4d88cc96f4910230c8c885d283ebeceb0c5906c23a8bc4806b5d9269b33`  
		Last Modified: Thu, 08 Dec 2022 18:43:28 GMT  
		Size: 1.8 KB (1828 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

## `kibana:8.6.0`

```console
$ docker pull kibana@sha256:71d8a59d32b181c3b3c04a4fecf2197f00eb381659510d04261c2cd5d43a0225
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 2
	-	linux; amd64
	-	linux; arm64 variant v8

### `kibana:8.6.0` - linux; amd64

```console
$ docker pull kibana@sha256:290eb536e48875edd13cdc4758ee6434a4822260a77ff6c77421359598ca2d82
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **285.1 MB (285141555 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e903232de67cf546ea3b7b0c53d0e7b74291a58d84fc538f6e543f14574ee15b`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Fri, 09 Dec 2022 01:20:21 GMT
ADD file:9d282119af0c42bc823c95b4192a3350cf2cad670622017356dd2e637762e425 in / 
# Fri, 09 Dec 2022 01:20:21 GMT
CMD ["bash"]
# Wed, 04 Jan 2023 12:33:43 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 04 Jan 2023 12:33:43 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update  &&       apt-get upgrade -y  &&       apt-get install -y --no-install-recommends        fontconfig fonts-liberation libnss3 libfontconfig1 ca-certificates curl &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* && exit_code=0 && break || exit_code=$? && echo "apt-get error: retry $iter in 10s" &&       sleep 10;     done;     (exit $exit_code) # buildkit
# Wed, 04 Jan 2023 12:33:44 GMT
RUN set -e ;     TINI_BIN="" ;     case "$(arch)" in         aarch64)             TINI_BIN='tini-arm64' ;             ;;         x86_64)             TINI_BIN='tini-amd64' ;             ;;         *) echo >&2 "Unsupported architecture $(arch)" ; exit 1 ;;     esac ;   TINI_VERSION='v0.19.0' ;   curl --retry 8 -S -L -O "https://github.com/krallin/tini/releases/download/${TINI_VERSION}/${TINI_BIN}" ;   curl --retry 8 -S -L -O "https://github.com/krallin/tini/releases/download/${TINI_VERSION}/${TINI_BIN}.sha256sum" ;   sha256sum -c "${TINI_BIN}.sha256sum" ;   rm "${TINI_BIN}.sha256sum" ;   mv "${TINI_BIN}" /bin/tini ;   chmod +x /bin/tini # buildkit
# Wed, 04 Jan 2023 12:33:44 GMT
RUN mkdir /usr/share/fonts/local # buildkit
# Wed, 04 Jan 2023 12:33:45 GMT
RUN curl --retry 8 -S -L -o /usr/share/fonts/local/NotoSansCJK-Regular.ttc https://github.com/googlefonts/noto-cjk/raw/NotoSansV2.001/NotoSansCJK-Regular.ttc # buildkit
# Wed, 04 Jan 2023 12:33:46 GMT
RUN echo "5dcd1c336cc9344cb77c03a0cd8982ca8a7dc97d620fd6c9c434e02dcb1ceeb3  /usr/share/fonts/local/NotoSansCJK-Regular.ttc" | sha256sum -c - # buildkit
# Wed, 04 Jan 2023 12:33:46 GMT
RUN fc-cache -v # buildkit
# Wed, 04 Jan 2023 12:34:38 GMT
COPY /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 04 Jan 2023 12:34:38 GMT
WORKDIR /usr/share/kibana
# Wed, 04 Jan 2023 12:34:38 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 04 Jan 2023 12:34:38 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 04 Jan 2023 12:34:38 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2023 12:34:38 GMT
COPY config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 04 Jan 2023 12:34:38 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 04 Jan 2023 12:34:38 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 04 Jan 2023 12:34:39 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 04 Jan 2023 12:34:40 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 04 Jan 2023 12:34:40 GMT
LABEL org.label-schema.build-date=2023-01-04T12:10:25.846Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=d3a625ef4a6e611a5b3233a1ce5cbe8ef429eb47 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.6.0 org.opencontainers.image.created=2023-01-04T12:10:25.846Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=d3a625ef4a6e611a5b3233a1ce5cbe8ef429eb47 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.6.0
# Wed, 04 Jan 2023 12:34:40 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 04 Jan 2023 12:34:40 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 04 Jan 2023 12:34:40 GMT
USER kibana
```

-	Layers:
	-	`sha256:846c0b181fff0c667d9444f8378e8fcfa13116da8d308bf21673f7e4bea8d580`  
		Last Modified: Thu, 08 Dec 2022 13:18:11 GMT  
		Size: 28.6 MB (28576882 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:d9d4723b53e8be6eb7d5058068c9f31b16d06af016837355c6abe1b66def8786`  
		Last Modified: Wed, 11 Jan 2023 02:45:09 GMT  
		Size: 10.5 MB (10505484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3ce175049527c3f868efca5d397eb51c36a34ea109c503e4c00372fae6ef62d5`  
		Last Modified: Wed, 11 Jan 2023 02:45:08 GMT  
		Size: 9.5 KB (9527 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c5a9d626f54a945949fb83a5db4fd86a9f828da48637626f7c2199df67923cea`  
		Last Modified: Wed, 11 Jan 2023 02:45:06 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ce0bd3b890fe9413220d5b22bcde8b6673f3a86acdbc777b0531e4c94e3bd778`  
		Last Modified: Wed, 11 Jan 2023 02:45:07 GMT  
		Size: 16.5 MB (16460484 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:1cb2fe49dd321efa6cd4501a83e65b80983f520f4ddee8e775a8e0d34211d272`  
		Last Modified: Wed, 11 Jan 2023 02:45:05 GMT  
		Size: 5.3 KB (5280 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7cbec743e1ac6fc2713a18e36f9db974f07d678dc4f189d590d42cbc4851d0cd`  
		Last Modified: Wed, 11 Jan 2023 02:45:35 GMT  
		Size: 229.4 MB (229387059 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:de07a2df0c3f2f22f9120cac33f6c75d59fdcdacc5994c18eef22cc7e9fb882a`  
		Last Modified: Wed, 11 Jan 2023 02:45:05 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f138fef302e60fde6b0ce75ab762174e96ed6ac4495d755d77f85fa98f21c428`  
		Last Modified: Wed, 11 Jan 2023 02:45:03 GMT  
		Size: 395.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c6afac2b2f31c15e41f6a0ddda570f32f2e7d9205f7394eb2e9967337d3a632b`  
		Last Modified: Wed, 11 Jan 2023 02:45:03 GMT  
		Size: 4.5 KB (4473 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:53c0672d0212a057ddf312d50584a44b31544ab4710871e34704e2d6af39bda1`  
		Last Modified: Wed, 11 Jan 2023 02:45:03 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:7522efaa8c9cf18aeaf41bb2d33f1e222e147b3b768fb87def3bed882280336a`  
		Last Modified: Wed, 11 Jan 2023 02:45:03 GMT  
		Size: 189.4 KB (189391 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5e8db7e50c169a449ed81b9e87d33c11927c22bb4b77e63212f5b4fc6746b376`  
		Last Modified: Wed, 11 Jan 2023 02:45:03 GMT  
		Size: 1.8 KB (1826 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `kibana:8.6.0` - linux; arm64 variant v8

```console
$ docker pull kibana@sha256:3000247a745025e8ce63067d36cb55b1f4d8a43735843a7a2a3b6536e7399113
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **300.0 MB (300041673 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7c6e02a43eb19e1c4ace4f6230fdf084fc9bf8e914215bbeefe069b09820180`
-	Entrypoint: `["\/bin\/tini","--"]`
-	Default Command: `["\/usr\/local\/bin\/kibana-docker"]`

```dockerfile
# Fri, 09 Dec 2022 01:46:50 GMT
ADD file:8cba976cb6ea226de769a768ee274e7679d34f923c93392f340680dc6696232e in / 
# Fri, 09 Dec 2022 01:46:50 GMT
CMD ["bash"]
# Wed, 04 Jan 2023 12:36:32 GMT
EXPOSE map[5601/tcp:{}]
# Wed, 04 Jan 2023 12:36:32 GMT
RUN for iter in {1..10}; do       export DEBIAN_FRONTEND=noninteractive &&       apt-get update  &&       apt-get upgrade -y  &&       apt-get install -y --no-install-recommends        fontconfig fonts-liberation libnss3 libfontconfig1 ca-certificates curl &&       apt-get clean &&       rm -rf /var/lib/apt/lists/* && exit_code=0 && break || exit_code=$? && echo "apt-get error: retry $iter in 10s" &&       sleep 10;     done;     (exit $exit_code) # buildkit
# Wed, 04 Jan 2023 12:36:34 GMT
RUN set -e ;     TINI_BIN="" ;     case "$(arch)" in         aarch64)             TINI_BIN='tini-arm64' ;             ;;         x86_64)             TINI_BIN='tini-amd64' ;             ;;         *) echo >&2 "Unsupported architecture $(arch)" ; exit 1 ;;     esac ;   TINI_VERSION='v0.19.0' ;   curl --retry 8 -S -L -O "https://github.com/krallin/tini/releases/download/${TINI_VERSION}/${TINI_BIN}" ;   curl --retry 8 -S -L -O "https://github.com/krallin/tini/releases/download/${TINI_VERSION}/${TINI_BIN}.sha256sum" ;   sha256sum -c "${TINI_BIN}.sha256sum" ;   rm "${TINI_BIN}.sha256sum" ;   mv "${TINI_BIN}" /bin/tini ;   chmod +x /bin/tini # buildkit
# Wed, 04 Jan 2023 12:36:34 GMT
RUN mkdir /usr/share/fonts/local # buildkit
# Wed, 04 Jan 2023 12:36:36 GMT
RUN curl --retry 8 -S -L -o /usr/share/fonts/local/NotoSansCJK-Regular.ttc https://github.com/googlefonts/noto-cjk/raw/NotoSansV2.001/NotoSansCJK-Regular.ttc # buildkit
# Wed, 04 Jan 2023 12:36:37 GMT
RUN echo "5dcd1c336cc9344cb77c03a0cd8982ca8a7dc97d620fd6c9c434e02dcb1ceeb3  /usr/share/fonts/local/NotoSansCJK-Regular.ttc" | sha256sum -c - # buildkit
# Wed, 04 Jan 2023 12:36:37 GMT
RUN fc-cache -v # buildkit
# Wed, 04 Jan 2023 12:37:28 GMT
COPY /usr/share/kibana /usr/share/kibana # buildkit
# Wed, 04 Jan 2023 12:37:28 GMT
WORKDIR /usr/share/kibana
# Wed, 04 Jan 2023 12:37:29 GMT
RUN ln -s /usr/share/kibana /opt/kibana # buildkit
# Wed, 04 Jan 2023 12:37:29 GMT
ENV ELASTIC_CONTAINER=true
# Wed, 04 Jan 2023 12:37:29 GMT
ENV PATH=/usr/share/kibana/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 04 Jan 2023 12:37:29 GMT
COPY config/kibana.yml /usr/share/kibana/config/kibana.yml # buildkit
# Wed, 04 Jan 2023 12:37:29 GMT
COPY bin/kibana-docker /usr/local/bin/ # buildkit
# Wed, 04 Jan 2023 12:37:29 GMT
RUN chmod g+ws /usr/share/kibana &&     find /usr/share/kibana -gid 0 -and -not -perm /g+w -exec chmod g+w {} \; # buildkit
# Wed, 04 Jan 2023 12:37:30 GMT
RUN find / -xdev -perm -4000 -exec chmod u-s {} + # buildkit
# Wed, 04 Jan 2023 12:37:31 GMT
RUN groupadd --gid 1000 kibana &&     useradd --uid 1000 --gid 1000 -G 0       --home-dir /usr/share/kibana --no-create-home       kibana # buildkit
# Wed, 04 Jan 2023 12:37:31 GMT
LABEL org.label-schema.build-date=2023-01-04T12:10:25.846Z org.label-schema.license=Elastic License org.label-schema.name=Kibana org.label-schema.schema-version=1.0 org.label-schema.url=https://www.elastic.co/products/kibana org.label-schema.usage=https://www.elastic.co/guide/en/kibana/reference/index.html org.label-schema.vcs-ref=d3a625ef4a6e611a5b3233a1ce5cbe8ef429eb47 org.label-schema.vcs-url=https://github.com/elastic/kibana org.label-schema.vendor=Elastic org.label-schema.version=8.6.0 org.opencontainers.image.created=2023-01-04T12:10:25.846Z org.opencontainers.image.documentation=https://www.elastic.co/guide/en/kibana/reference/index.html org.opencontainers.image.licenses=Elastic License org.opencontainers.image.revision=d3a625ef4a6e611a5b3233a1ce5cbe8ef429eb47 org.opencontainers.image.source=https://github.com/elastic/kibana org.opencontainers.image.title=Kibana org.opencontainers.image.url=https://www.elastic.co/products/kibana org.opencontainers.image.vendor=Elastic org.opencontainers.image.version=8.6.0
# Wed, 04 Jan 2023 12:37:31 GMT
ENTRYPOINT ["/bin/tini" "--"]
# Wed, 04 Jan 2023 12:37:31 GMT
CMD ["/usr/local/bin/kibana-docker"]
# Wed, 04 Jan 2023 12:37:31 GMT
USER kibana
```

-	Layers:
	-	`sha256:f04b4bbe15805316c8fda79beedd3b77e6b1ffcd0acf81226c3089e63f6bffeb`  
		Last Modified: Thu, 08 Dec 2022 15:28:02 GMT  
		Size: 27.2 MB (27193168 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0ac78036f8b34cee21fb92e81a092791d356e8e4cec01692b4b548d1e862d98d`  
		Last Modified: Wed, 11 Jan 2023 00:47:36 GMT  
		Size: 10.4 MB (10374384 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:efd68515d720ce9295ed46363d918bd7ffb36f4c25fe044b4cf377299a3c8811`  
		Last Modified: Wed, 11 Jan 2023 00:47:33 GMT  
		Size: 9.1 KB (9101 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a9e922a520625827a1a9f8afec3556638bf367ee54b7f52c961af0485e6f439b`  
		Last Modified: Wed, 11 Jan 2023 00:47:33 GMT  
		Size: 159.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5525802c5f1c46d41cb175c77b2621aa4a7ed2a799d4c58564a7b910e4f5efac`  
		Last Modified: Wed, 11 Jan 2023 00:47:32 GMT  
		Size: 16.5 MB (16460490 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:93c4e0875dcc78ec8c52c93973b3d13125e44a25c7d8ae7fed4a4ce670b04be0`  
		Last Modified: Wed, 11 Jan 2023 00:47:31 GMT  
		Size: 5.3 KB (5296 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a6691d0d8388c938a0a412252acafa8b341d88d9273b80beee8a4e6e0376636d`  
		Last Modified: Wed, 11 Jan 2023 00:47:56 GMT  
		Size: 245.8 MB (245808395 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b2490a06800220cc72b570bd758d7f46d1e561662b9f664528f1396cebfe9f5e`  
		Last Modified: Wed, 11 Jan 2023 00:47:31 GMT  
		Size: 133.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:61208f0a337e8a3907f75d4a0c607dff1a5fbd0598535e405f2e912cb4c87762`  
		Last Modified: Wed, 11 Jan 2023 00:47:29 GMT  
		Size: 394.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5b800de7607295a8d3e507cc08097cddda054f531c21459850dc2761a199ef10`  
		Last Modified: Wed, 11 Jan 2023 00:47:29 GMT  
		Size: 4.5 KB (4472 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:32bad293540817fd6c50a08b1396ab632fedaa96a1097f54347ec5fdf7dda78b`  
		Last Modified: Wed, 11 Jan 2023 00:47:29 GMT  
		Size: 398.0 B  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:da101c386bbf710a2ce2e7f078fdff1e4405401e6a7cefde566dcb7ecb52005c`  
		Last Modified: Wed, 11 Jan 2023 00:47:29 GMT  
		Size: 183.4 KB (183394 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a76eaadb4d1ff777bf00f85d5415a4ce8a39c2c36ec3971e44e9bbc78f4b7cd3`  
		Last Modified: Wed, 11 Jan 2023 00:47:34 GMT  
		Size: 1.8 KB (1825 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
