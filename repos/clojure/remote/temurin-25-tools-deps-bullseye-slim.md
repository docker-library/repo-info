## `clojure:temurin-25-tools-deps-bullseye-slim`

```console
$ docker pull clojure@sha256:95e161cd937cd50f89323750011fe2fe1977764ca9ae92377ba60d9701b3d4be
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:87d43a068c193a82b022901ff4bbea1875f5314b1f4db092f62d0aafd109f8e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **179.0 MB (179003844 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c15e4b40cd2ae2462ab947bda4baecf3618a2e848082b1be38d58944eab9fe5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1787529600'
# Fri, 04 Sep 2026 00:03:52 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:03:52 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:03:52 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:03:52 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:03:52 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:04:05 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:04:05 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:04:05 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:04:05 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:04:05 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4705738e5e0492efae5d2523aa791e06c852e2e1acb5e70a365cc08f9da0c556`  
		Last Modified: Mon, 24 Aug 2026 23:20:36 GMT  
		Size: 30.3 MB (30259727 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4a5a8023c929ec0455668b0c99ce7967fd720fc5f2b0357493dc3e738dbfed05`  
		Last Modified: Fri, 04 Sep 2026 00:04:24 GMT  
		Size: 92.6 MB (92615072 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:210aa914b78fbf286c03d741898ad97e749db4526ac77fece3af136fdeb741d6`  
		Last Modified: Fri, 04 Sep 2026 00:04:24 GMT  
		Size: 56.1 MB (56128003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f00d0f312b1007eaec59b24ba38e332ba65d382c86f35c73ab2ffc4101729b9e`  
		Last Modified: Fri, 04 Sep 2026 00:04:21 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59d56c0b247880b812c9ed87b4fa49ab342de3d1679fb0f41c9be148c0621405`  
		Last Modified: Fri, 04 Sep 2026 00:04:21 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:61750a7d04df2a0e30129434df579b8a18f4b22bba53cabed31d83d45446817d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5307821 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3b90f04b040b5bbf28d2cd9c333bca34cac85a736c09920b55d74b009e637e89`

```dockerfile
```

-	Layers:
	-	`sha256:b21c5d6ac3af1636050f42f8ccd95a11e8a7a65cd59f8b2e38f9df068d277129`  
		Last Modified: Fri, 04 Sep 2026 00:04:21 GMT  
		Size: 5.3 MB (5291142 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3259553a61128448a65913f6f02aeed7550027594bebf721f037e53cf9e23422`  
		Last Modified: Fri, 04 Sep 2026 00:04:21 GMT  
		Size: 16.7 KB (16679 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:655c3f64999542f13d129ff26bd1b82fe9af922375b8cd25f9e51338d53a9b83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176569764 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ab02ffe3cc1028d45715825b8de24c8c58e1694cb9d5289bd10579d8767a315a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1787529600'
# Fri, 04 Sep 2026 00:08:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:08:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:08:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:08:03 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:08:03 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:08:16 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:08:16 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:08:16 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:08:16 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:08:16 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:104799d4ff5b18bad31a13cbbc383730eebef29a1cac161b7905792a8dbe5bd3`  
		Last Modified: Mon, 24 Aug 2026 23:20:27 GMT  
		Size: 28.7 MB (28749031 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c38b79fafe91ea946aa9c6458cdfb9dd772fe283bc8c70cd533256d0bdda133f`  
		Last Modified: Fri, 04 Sep 2026 00:08:36 GMT  
		Size: 91.5 MB (91532195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6e40c9bf1267398666f1b902dcf302796b61477cd82f584a0eb1689559ad4c7e`  
		Last Modified: Fri, 04 Sep 2026 00:08:36 GMT  
		Size: 56.3 MB (56287496 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1947aebdb3bc3991f7cc5c83ee05183ae9acd6223161757db3be5ffb40258b44`  
		Last Modified: Fri, 04 Sep 2026 00:08:33 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:70526c83504c5a107e19ce0e51c6df73641b775adc5bb68f962a3931e6465776`  
		Last Modified: Fri, 04 Sep 2026 00:08:33 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:06c76577e9e8d2eb804fcf8cd633db8540ef9151efb2b267fc8ab5c35008dd83
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5313716 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95a0acadcd174cb12e94ed6e9be79a82f796a4e1d44b69c6d4eb26b56926c8cd`

```dockerfile
```

-	Layers:
	-	`sha256:16b14bef22cf0b8d5d8e3248f7bfd7dcdbb9e0629fb32b3d102749a6e6adb9e8`  
		Last Modified: Fri, 04 Sep 2026 00:08:33 GMT  
		Size: 5.3 MB (5296895 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b9058dc442d4f47785f5ffb8e045e0ad821228a66d37a942e5e67248a0e6c562`  
		Last Modified: Fri, 04 Sep 2026 00:08:33 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json
