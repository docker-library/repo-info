## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:d602312bb1302e8b9ca84ec7407a84ca7f5cfa6d6d5a3263bd84f4cc5964d897
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm variant v6
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:0a6455398ae84d5a4d1eedd6a74982dc1a8db426c9c8d0b26fe13b8e4acb3344
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.4 MB (11360774 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:60f7b2f48840cba6c39290646fe4018720cfce330b73a849917feb24abda3ce8`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:55 GMT
ADD alpine-minirootfs-3.23.7-x86_64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:55 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:06:34 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Wed, 21 Oct 2026 21:06:34 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Wed, 21 Oct 2026 21:06:37 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Wed, 21 Oct 2026 21:06:37 GMT
ENV EGGDROP_SHA256=fdfc2d08c17f6318b351981a64b193228852bb740ad94d2b43d3cd5585067c4b
# Wed, 21 Oct 2026 21:06:37 GMT
ENV EGGDROP_COMMIT=d93dbd7444d2519b83f613fe4d21e36ae4cc5797
# Wed, 21 Oct 2026 21:06:52 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256 *develop.tar.gz" | sha256sum -c -   && tar -zxf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Wed, 21 Oct 2026 21:06:52 GMT
ENV NICK=
# Wed, 21 Oct 2026 21:06:52 GMT
ENV SERVER=
# Wed, 21 Oct 2026 21:06:52 GMT
ENV LISTEN=3333
# Wed, 21 Oct 2026 21:06:52 GMT
ENV USERFILE=eggdrop.user
# Wed, 21 Oct 2026 21:06:52 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 21 Oct 2026 21:06:52 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 21 Oct 2026 21:06:52 GMT
EXPOSE map[3333/tcp:{}]
# Wed, 21 Oct 2026 21:06:52 GMT
COPY entrypoint.sh ./ # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
COPY docker.tcl ./scripts/ # buildkit
# Wed, 21 Oct 2026 21:06:53 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:53 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:5e9b4a97f6395abf54a5c584be133078deb2295e280dd0b9e77638874d07b637`  
		Last Modified: Wed, 21 Oct 2026 20:47:02 GMT  
		Size: 3.9 MB (3852227 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:67d4e5e2924463a25fea679fef548dfe69ba96602a531d7891905ae8b25bc564`  
		Last Modified: Wed, 21 Oct 2026 21:06:58 GMT  
		Size: 955.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:645a88e57fad97a18926eb5ac4b9c7e8859f08dde257c175352cde36463136ee`  
		Last Modified: Wed, 21 Oct 2026 21:06:58 GMT  
		Size: 4.8 MB (4770958 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:22bacde43396c45e86ef1524ff26ba350d4a0cd68200a2a74b0de325aa094355`  
		Last Modified: Wed, 21 Oct 2026 21:06:58 GMT  
		Size: 2.7 MB (2733511 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6cf741c4259b166e75b235701a3755d167eba5af5d7b6897ac917ce02a5fe115`  
		Last Modified: Wed, 21 Oct 2026 21:06:58 GMT  
		Size: 2.0 KB (1965 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8442e9104e266f92090e50b1b6c992fe98c95388ec55fd621f1afcecba41efb7`  
		Last Modified: Wed, 21 Oct 2026 21:06:59 GMT  
		Size: 1.1 KB (1126 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:develop` - unknown; unknown

```console
$ docker pull eggdrop@sha256:8472e38b37e7d3785d3141983b37f8c93678681b172545c62085d7d25c1fc362
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **754.0 KB (754019 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47d18bf7cd9b54cb2c406664385021b2937558ca4415d211246b320572846a9e`

```dockerfile
```

-	Layers:
	-	`sha256:2e8e8d7dced36866edf8ce6a62d5d9cb3c0ef2caa34957ee465e1816f9a7729a`  
		Last Modified: Wed, 21 Oct 2026 21:06:58 GMT  
		Size: 738.2 KB (738227 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d8af9bb30fda04964eeb6fd7c9a6fb55d3bc4cef17d1f3b2dbc1fccca4d361aa`  
		Last Modified: Wed, 21 Oct 2026 21:06:58 GMT  
		Size: 15.8 KB (15792 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:develop` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:f77f95e9affca558536f3ac1c69a33611f8f8c7059eb4e0522b5eb9059a1fbd6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.0 MB (11038893 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1936d357d9c064ab9adb94124b8977d98980a7b72da650d8e33bea6de4ed0ee3`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:42 GMT
ADD alpine-minirootfs-3.23.7-armhf.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:42 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:10:50 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Wed, 21 Oct 2026 21:10:50 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Wed, 21 Oct 2026 21:10:51 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Wed, 21 Oct 2026 21:10:51 GMT
ENV EGGDROP_SHA256=fdfc2d08c17f6318b351981a64b193228852bb740ad94d2b43d3cd5585067c4b
# Wed, 21 Oct 2026 21:10:51 GMT
ENV EGGDROP_COMMIT=d93dbd7444d2519b83f613fe4d21e36ae4cc5797
# Wed, 21 Oct 2026 21:11:12 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256 *develop.tar.gz" | sha256sum -c -   && tar -zxf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Wed, 21 Oct 2026 21:11:12 GMT
ENV NICK=
# Wed, 21 Oct 2026 21:11:12 GMT
ENV SERVER=
# Wed, 21 Oct 2026 21:11:12 GMT
ENV LISTEN=3333
# Wed, 21 Oct 2026 21:11:12 GMT
ENV USERFILE=eggdrop.user
# Wed, 21 Oct 2026 21:11:12 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 21 Oct 2026 21:11:12 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 21 Oct 2026 21:11:12 GMT
EXPOSE map[3333/tcp:{}]
# Wed, 21 Oct 2026 21:11:12 GMT
COPY entrypoint.sh ./ # buildkit
# Wed, 21 Oct 2026 21:11:12 GMT
COPY docker.tcl ./scripts/ # buildkit
# Wed, 21 Oct 2026 21:11:12 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 21 Oct 2026 21:11:12 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:c51236e1484aa501b6ebe7b03b49315973e0452deb44828e506af4e36af597f8`  
		Last Modified: Wed, 21 Oct 2026 20:46:46 GMT  
		Size: 3.6 MB (3558187 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8858351e12f9c10d802ceed51de60590e91695add7b11dda5b731fda4ed653b5`  
		Last Modified: Wed, 21 Oct 2026 21:11:17 GMT  
		Size: 954.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:418937a0fc181abacaeaf4d6fc2a6ec78f34219a2f0e39eb9cc46807faf9de7d`  
		Last Modified: Wed, 21 Oct 2026 21:11:17 GMT  
		Size: 4.7 MB (4726975 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:42ddf8361be41bca5d77ead45c63c620050e86986aadb415adb25c265cc3887c`  
		Last Modified: Wed, 21 Oct 2026 21:11:17 GMT  
		Size: 2.7 MB (2749650 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ebb1e013232ba9d7a72ccf40049861c7e93ce515799a6711db28ea0380a7c371`  
		Last Modified: Wed, 21 Oct 2026 21:11:17 GMT  
		Size: 2.0 KB (1967 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e4ef8d946b6e56dc713718f88f7b1a34e820bfb8bf0a5b8daf4c58bd55d4aa45`  
		Last Modified: Wed, 21 Oct 2026 21:11:18 GMT  
		Size: 1.1 KB (1128 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:develop` - unknown; unknown

```console
$ docker pull eggdrop@sha256:c91e70da880faa3a3094b1c62709e522f44f58e891262a7dba231810d8d37832
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.7 KB (15659 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:08bf071de294456bb5a468940e05b480211c363942cf952c4893638dede15f05`

```dockerfile
```

-	Layers:
	-	`sha256:f7e532e1f7a0bd1eb3619fc60bef653edc1e18f84533ee3eaff90728d934e402`  
		Last Modified: Wed, 21 Oct 2026 21:11:17 GMT  
		Size: 15.7 KB (15659 bytes)  
		MIME: application/vnd.in-toto+json

### `eggdrop:develop` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:9d3996f5af848903646c03524e1c72e1d887a4e4c2f37406d6cbe2b3e886bc00
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **11.8 MB (11785620 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:55e61f997027aade74d4b6db16129e236987feaad86050e7cefafcfdfd036c36`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Wed, 21 Oct 2026 20:46:49 GMT
ADD alpine-minirootfs-3.23.7-aarch64.tar.gz / # buildkit
# Wed, 21 Oct 2026 20:46:49 GMT
CMD ["/bin/sh"]
# Wed, 21 Oct 2026 21:05:51 GMT
LABEL org.opencontainers.image.authors=Geo Van O <geo@eggheads.org> org.opencontainers.image.url=https://www.eggheads.org
# Wed, 21 Oct 2026 21:05:51 GMT
RUN addgroup -S -g 3333 eggdrop     && adduser -S -u 3333 eggdrop eggdrop # buildkit
# Wed, 21 Oct 2026 21:05:56 GMT
RUN apk add --no-cache 'su-exec>=0.2' bash openssl tcl9 tcl9-dev # buildkit
# Wed, 21 Oct 2026 21:05:56 GMT
ENV EGGDROP_SHA256=fdfc2d08c17f6318b351981a64b193228852bb740ad94d2b43d3cd5585067c4b
# Wed, 21 Oct 2026 21:05:56 GMT
ENV EGGDROP_COMMIT=d93dbd7444d2519b83f613fe4d21e36ae4cc5797
# Wed, 21 Oct 2026 21:06:14 GMT
RUN apk add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev bsd-compat-headers zlib-dev   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256 *develop.tar.gz" | sha256sum -c -   && tar -zxf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && nproc="$(nproc)"     && make -j"$nproc"     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del --no-network egg-deps # buildkit
# Wed, 21 Oct 2026 21:06:14 GMT
ENV NICK=
# Wed, 21 Oct 2026 21:06:14 GMT
ENV SERVER=
# Wed, 21 Oct 2026 21:06:14 GMT
ENV LISTEN=3333
# Wed, 21 Oct 2026 21:06:14 GMT
ENV USERFILE=eggdrop.user
# Wed, 21 Oct 2026 21:06:14 GMT
ENV CHANFILE=eggdrop.chan
# Wed, 21 Oct 2026 21:06:14 GMT
WORKDIR /home/eggdrop/eggdrop
# Wed, 21 Oct 2026 21:06:14 GMT
EXPOSE map[3333/tcp:{}]
# Wed, 21 Oct 2026 21:06:14 GMT
COPY entrypoint.sh ./ # buildkit
# Wed, 21 Oct 2026 21:06:14 GMT
COPY docker.tcl ./scripts/ # buildkit
# Wed, 21 Oct 2026 21:06:14 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Wed, 21 Oct 2026 21:06:14 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:197a036d7c646d3e744af55598877c355ab789d97466837b69296bed05ca0d5f`  
		Last Modified: Wed, 21 Oct 2026 20:46:55 GMT  
		Size: 4.2 MB (4189494 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1deb9514b8dba6892ffd94dd487b28687ccf31a6dd69dbe8c12c55e4b31b6ff`  
		Last Modified: Wed, 21 Oct 2026 21:06:19 GMT  
		Size: 953.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f8d2f6fa9acedec2e5173d3648f83ba7f8535fb61925579a801997799524f928`  
		Last Modified: Wed, 21 Oct 2026 21:06:20 GMT  
		Size: 4.8 MB (4844928 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:762de6c55e49d517dbc5eccef5136152b3a0825a43a789bedb6d8ec93feabe12`  
		Last Modified: Wed, 21 Oct 2026 21:06:20 GMT  
		Size: 2.7 MB (2747115 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd24249ef10a8fea8a1b910726eeef1ddf523e3d9aea4ae81cf9013518dee40`  
		Last Modified: Wed, 21 Oct 2026 21:06:20 GMT  
		Size: 2.0 KB (1969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59bbfd13595069fa0f85f764536c736c30dadaec9883bd952600d83297ae4c2a`  
		Last Modified: Wed, 21 Oct 2026 21:06:21 GMT  
		Size: 1.1 KB (1129 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `eggdrop:develop` - unknown; unknown

```console
$ docker pull eggdrop@sha256:f8f0ff384eba12cf4c1bbe2d250c7e567d1f93a9eb4427daee46ecdcdc57c53c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **753.5 KB (753487 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:629258a9b9601a8ce507fee5746b7c02854f64c91d220baa945400647ca96883`

```dockerfile
```

-	Layers:
	-	`sha256:e2b38d4e40e70a836e71010a9f6b78ee44c272eb69f8a0bb0898b49f673043b2`  
		Last Modified: Wed, 21 Oct 2026 21:06:20 GMT  
		Size: 737.6 KB (737597 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5760287fdf32264f8a086708dd4188c29409b4ee6901e7ba196401f28160af8e`  
		Last Modified: Wed, 21 Oct 2026 21:06:19 GMT  
		Size: 15.9 KB (15890 bytes)  
		MIME: application/vnd.in-toto+json
