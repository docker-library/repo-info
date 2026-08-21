## `clojure:temurin-25-tools-deps-1.12.5.1664-bullseye`

```console
$ docker pull clojure@sha256:c9d555465bb6cf36da156f9438f610c2e9071114ede843a0cdd7c44714a52564
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-1.12.5.1664-bullseye` - linux; amd64

```console
$ docker pull clojure@sha256:5ab98cb4eac1ad574a8bc6c3434c592827bdb723d7d0d8ae4f58e7e3cea6ac4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **212.9 MB (212919205 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d6a7404aa2540263c84b20661bea3548d5b92b7e9722fe4c20701cb224f0902e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:21:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:21:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:21:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:21:04 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:21:04 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:21:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:21:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:21:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:21:17 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:21:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:accfb92e6c6ad5d206b68e1bfd8a6c2af4ae82f9b6cc6eafe49675a0655e0742`  
		Last Modified: Tue, 04 Aug 2026 23:52:03 GMT  
		Size: 53.8 MB (53777019 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fd765d478c593a99eed53e1c7785d3ceb45fda10f480f374aa3f522fae50afe`  
		Last Modified: Fri, 21 Aug 2026 19:21:39 GMT  
		Size: 92.6 MB (92615082 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:77d5e0a05f24d3b573bb5bf1b7a179da5a61454bb4f6a768b1efc46443febf23`  
		Last Modified: Fri, 21 Aug 2026 19:21:39 GMT  
		Size: 66.5 MB (66526062 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3cb89146c4abfbc315478523116eb2e9f3e51e444678bf6d728640a59afc960`  
		Last Modified: Fri, 21 Aug 2026 19:21:36 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e0fc2f8bfa9e27a28ff69e8fd072bb37388f464df358a0a1a2477a05df93e1e`  
		Last Modified: Fri, 21 Aug 2026 19:21:36 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1664-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:c44aa165dde83cd7a15f21fe626ae5c72bc41b487fd60ae4b62e2808cb3116e4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7395323 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97a5d950142535228228cc0137dfb5e5ad22147494efedd389de1788c6b0151c`

```dockerfile
```

-	Layers:
	-	`sha256:82835cd093c416446deac29fcc57258e2a7e9921ab6c90df5ebba7a5cc434df0`  
		Last Modified: Fri, 21 Aug 2026 19:21:37 GMT  
		Size: 7.4 MB (7378722 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9334c787808a7dafa6eebefeb37e8f9ebc855b3c411ed69feb470626bb13f0c7`  
		Last Modified: Fri, 21 Aug 2026 19:21:36 GMT  
		Size: 16.6 KB (16601 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-1.12.5.1664-bullseye` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:43d36596efd58b7f15eedd3e39770abe775331e016fabe6f126f68cd9e76fcec
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.5 MB (210484751 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c651c9145eb7930cbc6c5e3d451b482787f027b23ae7ba4190abb6fd1375ad76`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 03 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1785715200'
# Fri, 21 Aug 2026 19:08:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 21 Aug 2026 19:08:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 21 Aug 2026 19:08:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 21 Aug 2026 19:08:34 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Fri, 21 Aug 2026 19:08:34 GMT
WORKDIR /tmp
# Fri, 21 Aug 2026 19:08:49 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 21 Aug 2026 19:08:49 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 21 Aug 2026 19:08:49 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 21 Aug 2026 19:08:49 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 21 Aug 2026 19:08:49 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3086cf1958fe5793d805c40e074e8662fbe7bb02df60f5a5dc95718602f4d4e0`  
		Last Modified: Tue, 04 Aug 2026 23:51:56 GMT  
		Size: 52.3 MB (52260902 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75d2d72ca7f94527f0c668562090f57958494740c790e9487569b258b1d85e6e`  
		Last Modified: Fri, 21 Aug 2026 19:09:13 GMT  
		Size: 91.5 MB (91532194 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d1de6f51395ef71bcc9f3448435efcc390d75757132c4d66ea3cd74026e1f58a`  
		Last Modified: Fri, 21 Aug 2026 19:09:12 GMT  
		Size: 66.7 MB (66690614 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cb1bd21187692d7e8c5679d6f4eb0e26de15222f851835f943df267c2784ce34`  
		Last Modified: Fri, 21 Aug 2026 19:09:09 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a4ebfc17effbfc0f8350150921de7aae5ecc410c4ef7ad1ae71de9a35a8b6d41`  
		Last Modified: Fri, 21 Aug 2026 19:09:09 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-1.12.5.1664-bullseye` - unknown; unknown

```console
$ docker pull clojure@sha256:f03e8212d14d6e2036489f99604426123de993b8c9808c63e66704931b795061
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7400585 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a23b94af3215300b8f7e1c869e411a6ac82f27747e7cf69c481fc35a2c033edf`

```dockerfile
```

-	Layers:
	-	`sha256:4bcefee3f91f1692a9aa26e02b02cba45ce533737c8355e73765491f961bd127`  
		Last Modified: Fri, 21 Aug 2026 19:09:10 GMT  
		Size: 7.4 MB (7383842 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:f0d2413c7b6bf93dea202ed4383a45549162d07794840ae1d5055c8019e8cbfb`  
		Last Modified: Fri, 21 Aug 2026 19:09:09 GMT  
		Size: 16.7 KB (16743 bytes)  
		MIME: application/vnd.in-toto+json
