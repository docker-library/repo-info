## `eggdrop:develop`

```console
$ docker pull eggdrop@sha256:825eca3a6b12a0d2ebb30381d2cd23c2b60988a3a17b37f9490e1b7b5a9e9a9b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.list.v2+json`
-	Platforms: 3
	-	linux; amd64
	-	linux; arm variant v6
	-	linux; arm64 variant v8

### `eggdrop:develop` - linux; amd64

```console
$ docker pull eggdrop@sha256:60922ed1b032320672c726959583f441dfd9990c236a79a5d99a34f876dc45ac
```

-	Docker Version: 20.10.12
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.1 MB (16092986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bd3ae787c0421886ce74d9bcc4b90717abd197520e31ccda45c5ea03f5d5c61`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Tue, 09 Aug 2022 17:20:00 GMT
ADD file:f77e3f51f020890d22997e6c2ca98968b75b8bc8c463341a2010ff0655d4c88f in / 
# Tue, 09 Aug 2022 17:20:01 GMT
CMD ["/bin/sh"]
# Thu, 06 Oct 2022 20:37:01 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Thu, 06 Oct 2022 20:37:02 GMT
RUN adduser -S eggdrop
# Thu, 06 Oct 2022 20:37:03 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 02 Jan 2023 18:23:23 GMT
ENV EGGDROP_SHA256=caafc1ad001e2e77793dca37998cb94d88efadb4ec9c3de44c1004b04f15aa6e
# Mon, 02 Jan 2023 18:23:23 GMT
ENV EGGDROP_COMMIT=2a6a36888f5aa2204d84a9e6282d35e5421c2c8a
# Mon, 02 Jan 2023 18:23:24 GMT
RUN apk --update add --no-cache bash openssl
# Fri, 13 Jan 2023 00:23:19 GMT
RUN apk --update add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev   && wget "https://prdownloads.sourceforge.net/tcl/tcl8.6.13-src.tar.gz" -O tcl8.6.13-src.tar.gz   && tar -zxf tcl8.6.13-src.tar.gz   && ( cd tcl8.6.13     && sed -i "/define TCL_UTF_MAX/c\#define TCL_UTF_MAX 6" generic/tcl.h     && cd unix     && ./configure     && make     && make install )   && rm -rf tcl8.6.13-src.tar.gz   && rm -rf tcl8.6.13   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256 *develop.tar.gz" | sha256sum -c -   && tar -zxf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 13 Jan 2023 00:23:20 GMT
ENV NICK=
# Fri, 13 Jan 2023 00:23:20 GMT
ENV SERVER=
# Fri, 13 Jan 2023 00:23:20 GMT
ENV LISTEN=3333
# Fri, 13 Jan 2023 00:23:20 GMT
ENV OWNER=
# Fri, 13 Jan 2023 00:23:20 GMT
ENV USERFILE=eggdrop.user
# Fri, 13 Jan 2023 00:23:20 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 13 Jan 2023 00:23:20 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 13 Jan 2023 00:23:20 GMT
EXPOSE 3333
# Fri, 13 Jan 2023 00:23:20 GMT
COPY file:35e05bb72116a1848ec779e3fbc4ea6bbcd95ceb11059751f608c8543e18cde7 in /home/eggdrop/eggdrop 
# Fri, 13 Jan 2023 00:23:21 GMT
COPY file:f30bcb89ff6df7709069d6cc97353d72cdbbebc6530d8d350cbb3ae4dad79129 in /home/eggdrop/eggdrop/scripts/ 
# Fri, 13 Jan 2023 00:23:21 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 13 Jan 2023 00:23:21 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:9621f1afde84053b2f9b6ff34fc7f7460712247c01cbab483c5fa7132cf782ca`  
		Last Modified: Tue, 09 Aug 2022 17:20:52 GMT  
		Size: 2.8 MB (2823512 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:dd629a2e1daaf15d9fdb2bd171b0a8c0622c4f982e7a6b1059c076fb9e1b42e5`  
		Last Modified: Thu, 06 Oct 2022 20:42:28 GMT  
		Size: 1.3 KB (1271 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:9dfd741c22df00a71bc308727ead4698aa665f26cbf98ae6e3899b5c94acef40`  
		Last Modified: Thu, 06 Oct 2022 20:42:26 GMT  
		Size: 10.9 KB (10941 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:689efdd2fe8f24ef5736ec9110f67ae9b0ac450c5533cce1bad38d76192346ea`  
		Last Modified: Mon, 02 Jan 2023 18:27:42 GMT  
		Size: 1.1 MB (1090156 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:5f209da62c6cf69bb823010f5b7b7dba2cd98a91117e48010158d182f57d10e8`  
		Last Modified: Fri, 13 Jan 2023 00:27:55 GMT  
		Size: 12.2 MB (12164137 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:cde85e25a2f72925b67e83b6b733c02a82c0a0910dcbb35025e4407b853b086c`  
		Last Modified: Fri, 13 Jan 2023 00:27:53 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:3c61de8ba182741492a2713fbe554efca0f46e0cde9e062ece7eede0a388e847`  
		Last Modified: Fri, 13 Jan 2023 00:27:53 GMT  
		Size: 1.1 KB (1070 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eggdrop:develop` - linux; arm variant v6

```console
$ docker pull eggdrop@sha256:52849dc258467c60fdde6b75e4e5f63c33e5f0c23ba241b39e4396f5bf0cfde4
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.4 MB (15442626 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b35741d60585cd2a03a91512d1a952867dc97584fe9f429b1574366b48efdd47`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 10 Nov 2022 20:49:36 GMT
ADD file:89cb25f97e17bed5c56311280efe5cfa78422d8ffbe36232195d13f94d67417e in / 
# Thu, 10 Nov 2022 20:49:36 GMT
CMD ["/bin/sh"]
# Thu, 10 Nov 2022 21:34:46 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Thu, 10 Nov 2022 21:34:47 GMT
RUN adduser -S eggdrop
# Thu, 10 Nov 2022 21:34:49 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 02 Jan 2023 17:53:30 GMT
ENV EGGDROP_SHA256=caafc1ad001e2e77793dca37998cb94d88efadb4ec9c3de44c1004b04f15aa6e
# Mon, 02 Jan 2023 17:53:30 GMT
ENV EGGDROP_COMMIT=2a6a36888f5aa2204d84a9e6282d35e5421c2c8a
# Mon, 02 Jan 2023 17:53:32 GMT
RUN apk --update add --no-cache bash openssl
# Thu, 12 Jan 2023 23:53:58 GMT
RUN apk --update add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev   && wget "https://prdownloads.sourceforge.net/tcl/tcl8.6.13-src.tar.gz" -O tcl8.6.13-src.tar.gz   && tar -zxf tcl8.6.13-src.tar.gz   && ( cd tcl8.6.13     && sed -i "/define TCL_UTF_MAX/c\#define TCL_UTF_MAX 6" generic/tcl.h     && cd unix     && ./configure     && make     && make install )   && rm -rf tcl8.6.13-src.tar.gz   && rm -rf tcl8.6.13   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256 *develop.tar.gz" | sha256sum -c -   && tar -zxf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Thu, 12 Jan 2023 23:53:59 GMT
ENV NICK=
# Thu, 12 Jan 2023 23:53:59 GMT
ENV SERVER=
# Thu, 12 Jan 2023 23:53:59 GMT
ENV LISTEN=3333
# Thu, 12 Jan 2023 23:53:59 GMT
ENV OWNER=
# Thu, 12 Jan 2023 23:53:59 GMT
ENV USERFILE=eggdrop.user
# Thu, 12 Jan 2023 23:53:59 GMT
ENV CHANFILE=eggdrop.chan
# Thu, 12 Jan 2023 23:54:00 GMT
WORKDIR /home/eggdrop/eggdrop
# Thu, 12 Jan 2023 23:54:00 GMT
EXPOSE 3333
# Thu, 12 Jan 2023 23:54:00 GMT
COPY file:35e05bb72116a1848ec779e3fbc4ea6bbcd95ceb11059751f608c8543e18cde7 in /home/eggdrop/eggdrop 
# Thu, 12 Jan 2023 23:54:00 GMT
COPY file:f30bcb89ff6df7709069d6cc97353d72cdbbebc6530d8d350cbb3ae4dad79129 in /home/eggdrop/eggdrop/scripts/ 
# Thu, 12 Jan 2023 23:54:00 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Thu, 12 Jan 2023 23:54:00 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:293b708aa6fb80967f27727d5c9c53ac9ba9cac376bed2ad02c17a5cca317b35`  
		Last Modified: Tue, 09 Aug 2022 17:50:52 GMT  
		Size: 2.6 MB (2631127 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:24b34cb66db1266899fb04b5d23484182b4fbaeb962888748f7cf45b5469e1cc`  
		Last Modified: Thu, 10 Nov 2022 21:43:03 GMT  
		Size: 1.2 KB (1246 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:b411ce6f41f3486b16f301c44530bcdff2350b1a818209f912759aa06bded636`  
		Last Modified: Thu, 10 Nov 2022 21:43:01 GMT  
		Size: 10.7 KB (10658 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:f80e32b4b1273dc126b76d604cf41a5072ebc6bc1cea3eef47a69fd2fc461029`  
		Last Modified: Mon, 02 Jan 2023 17:58:49 GMT  
		Size: 1.0 MB (1032686 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:985eccd12562aad068fe33bdbc6f9f32d89baeec5f0ebc1a6efe46d236704b26`  
		Last Modified: Thu, 12 Jan 2023 23:59:40 GMT  
		Size: 11.8 MB (11763942 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:0556e5936552d2eb253d89c9398f9870c94a997a624df064bad6d7e2f4d9d40e`  
		Last Modified: Thu, 12 Jan 2023 23:59:37 GMT  
		Size: 1.9 KB (1899 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:6a0aa92ae81104c9225601dc3684d4e04f1234d45110e6a3de40a8cc360514bf`  
		Last Modified: Thu, 12 Jan 2023 23:59:37 GMT  
		Size: 1.1 KB (1068 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip

### `eggdrop:develop` - linux; arm64 variant v8

```console
$ docker pull eggdrop@sha256:4d147ef029a5a25cfbc5e6e787d81dba722bddb462892de02943ccb60f25c9a1
```

-	Docker Version: 20.10.17
-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **15.9 MB (15903493 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:38f335332312d37927b9a7f33c5f81ca98b7dfc4615e17e71f4d22684bb59ba9`
-	Entrypoint: `["\/home\/eggdrop\/eggdrop\/entrypoint.sh"]`
-	Default Command: `["eggdrop.conf"]`

```dockerfile
# Thu, 10 Nov 2022 20:39:46 GMT
ADD file:4b51a9d40f20d2beb29d0759b161d2b9403493453beb509de4e86a5d98513f16 in / 
# Thu, 10 Nov 2022 20:39:46 GMT
CMD ["/bin/sh"]
# Thu, 10 Nov 2022 22:03:31 GMT
MAINTAINER Geo Van O <geo@eggheads.org>
# Thu, 10 Nov 2022 22:03:31 GMT
RUN adduser -S eggdrop
# Thu, 10 Nov 2022 22:03:32 GMT
RUN apk add --no-cache 'su-exec>=0.2'
# Mon, 02 Jan 2023 17:40:37 GMT
ENV EGGDROP_SHA256=caafc1ad001e2e77793dca37998cb94d88efadb4ec9c3de44c1004b04f15aa6e
# Mon, 02 Jan 2023 17:40:37 GMT
ENV EGGDROP_COMMIT=2a6a36888f5aa2204d84a9e6282d35e5421c2c8a
# Mon, 02 Jan 2023 17:40:38 GMT
RUN apk --update add --no-cache bash openssl
# Fri, 13 Jan 2023 00:43:07 GMT
RUN apk --update add --no-cache --virtual egg-deps wget ca-certificates make tar gnupg build-base openssl-dev   && wget "https://prdownloads.sourceforge.net/tcl/tcl8.6.13-src.tar.gz" -O tcl8.6.13-src.tar.gz   && tar -zxf tcl8.6.13-src.tar.gz   && ( cd tcl8.6.13     && sed -i "/define TCL_UTF_MAX/c\#define TCL_UTF_MAX 6" generic/tcl.h     && cd unix     && ./configure     && make     && make install )   && rm -rf tcl8.6.13-src.tar.gz   && rm -rf tcl8.6.13   && wget "https://github.com/eggheads/eggdrop/archive/$EGGDROP_COMMIT.tar.gz" -O develop.tar.gz   && echo "$EGGDROP_SHA256 *develop.tar.gz" | sha256sum -c -   && tar -zxf develop.tar.gz   && rm develop.tar.gz     && ( cd eggdrop-$EGGDROP_COMMIT     && ./configure     && make config     && make     && make install DEST=/home/eggdrop/eggdrop )   && rm -rf eggdrop-$EGGDROP_COMMIT   && mkdir /home/eggdrop/eggdrop/data   && chown -R eggdrop /home/eggdrop/eggdrop   && apk del egg-deps
# Fri, 13 Jan 2023 00:43:07 GMT
ENV NICK=
# Fri, 13 Jan 2023 00:43:07 GMT
ENV SERVER=
# Fri, 13 Jan 2023 00:43:07 GMT
ENV LISTEN=3333
# Fri, 13 Jan 2023 00:43:07 GMT
ENV OWNER=
# Fri, 13 Jan 2023 00:43:07 GMT
ENV USERFILE=eggdrop.user
# Fri, 13 Jan 2023 00:43:07 GMT
ENV CHANFILE=eggdrop.chan
# Fri, 13 Jan 2023 00:43:07 GMT
WORKDIR /home/eggdrop/eggdrop
# Fri, 13 Jan 2023 00:43:07 GMT
EXPOSE 3333
# Fri, 13 Jan 2023 00:43:07 GMT
COPY file:35e05bb72116a1848ec779e3fbc4ea6bbcd95ceb11059751f608c8543e18cde7 in /home/eggdrop/eggdrop 
# Fri, 13 Jan 2023 00:43:08 GMT
COPY file:f30bcb89ff6df7709069d6cc97353d72cdbbebc6530d8d350cbb3ae4dad79129 in /home/eggdrop/eggdrop/scripts/ 
# Fri, 13 Jan 2023 00:43:08 GMT
ENTRYPOINT ["/home/eggdrop/eggdrop/entrypoint.sh"]
# Fri, 13 Jan 2023 00:43:08 GMT
CMD ["eggdrop.conf"]
```

-	Layers:
	-	`sha256:47517142f6ba87eca6b7bdca1e0df160b74671c81e4b9605dad38c1862a43be3`  
		Last Modified: Tue, 09 Aug 2022 17:40:55 GMT  
		Size: 2.7 MB (2718439 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:c0978db877eba00ad9d43a52f1f6b67ecf10580acd57dcecb0bbf56618c8b6c6`  
		Last Modified: Thu, 10 Nov 2022 22:08:28 GMT  
		Size: 1.3 KB (1272 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:70602ff34b989fc029480804413ff335d293fb78a34841211b726953832e7d3d`  
		Last Modified: Thu, 10 Nov 2022 22:08:26 GMT  
		Size: 10.8 KB (10767 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:4454707cf8910a8f297397f40a7d87d9ebecc3a998ac68d054804e72b4e0a3ff`  
		Last Modified: Mon, 02 Jan 2023 17:44:40 GMT  
		Size: 1.1 MB (1087920 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:a01d503baafbf7471b226324a831df5ca2e8390473ce78e236d3dd5c1ab3c62b`  
		Last Modified: Fri, 13 Jan 2023 00:47:38 GMT  
		Size: 12.1 MB (12082133 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:ae2628d81f40fa3a0ea7c043efac98f239948216f7aac6c72177c8e4abb9afde`  
		Last Modified: Fri, 13 Jan 2023 00:47:37 GMT  
		Size: 1.9 KB (1897 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
	-	`sha256:2a107c14f7aacddd363b279d3586e7776c826935582c1a9cf5bff0327061c7e1`  
		Last Modified: Fri, 13 Jan 2023 00:47:37 GMT  
		Size: 1.1 KB (1065 bytes)  
		MIME: application/vnd.docker.image.rootfs.diff.tar.gzip
