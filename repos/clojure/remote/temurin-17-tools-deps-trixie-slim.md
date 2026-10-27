## `clojure:temurin-17-tools-deps-trixie-slim`

```console
$ docker pull clojure@sha256:fd9ae4b5d75235e2aa8bde416fc2a613d127f9b752141f105468d93df888c7e2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:5fdeb6956d2fce9057448771948b10d6903c62019208e52ce85726d103af7b1c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **244.7 MB (244659423 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d93e77e23380b3054f721a28d630f6015141ba9e318472ddeacb32d185b5cf4b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:49:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:49:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:49:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:49:37 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:49:37 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:49:53 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:49:53 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:49:53 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:49:53 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:49:53 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f2be67225471500c788ce88c597eb5ea8336e912ad1ca4815650e0281afe2034`  
		Last Modified: Tue, 20 Oct 2026 23:31:18 GMT  
		Size: 29.8 MB (29843579 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06641aad349192aa8f6a9b3cd3fbe1fac3377a20b644f396a6a5046d206340f7`  
		Last Modified: Tue, 27 Oct 2026 00:50:18 GMT  
		Size: 145.8 MB (145825425 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5067d830ae075b3886cb6b081ce0d2e6136b02183ca735eeebfeda327253e38e`  
		Last Modified: Tue, 27 Oct 2026 00:50:16 GMT  
		Size: 69.0 MB (68989375 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ef12d7cd5b9083bd4780b0f6cb53506b569fa901a837107b88214f9683a149b`  
		Last Modified: Tue, 27 Oct 2026 00:50:13 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:445711885cee408fc1ae6af82ae295ff955306b34564a1ad35933b3354ba8f8f`  
		Last Modified: Tue, 27 Oct 2026 00:50:13 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:30f828e009e510eaaaabc0ecadca451c264515c8036fe265f61744a9a7a8aa4c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5278031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:988e02426a3bba8f4c74dbec968a0e1db2ddc2cfed154c58b5d9e91f1293b3d4`

```dockerfile
```

-	Layers:
	-	`sha256:1950c186e79c898450898cd7b8b11f947686a58662fe56de5d6454307abbb4e4`  
		Last Modified: Tue, 27 Oct 2026 00:50:14 GMT  
		Size: 5.3 MB (5262065 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:21a4c646eeaf2198850d5ee4b690d7080a4c746212557e7eb2b4d4ac4c944a82`  
		Last Modified: Tue, 27 Oct 2026 00:50:13 GMT  
		Size: 16.0 KB (15966 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:9b4c99bf99bf2f4c8ba4e55bdb2ec60fbce710bea665397eacf764ea829778b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **243.7 MB (243654847 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:496929c4a7bde443af0d95bbbfb3e598c03f7f489cdea74932983154e5fea316`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1792531975'
# Tue, 27 Oct 2026 00:49:08 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 27 Oct 2026 00:49:08 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 27 Oct 2026 00:49:08 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 27 Oct 2026 00:49:08 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Tue, 27 Oct 2026 00:49:08 GMT
WORKDIR /tmp
# Tue, 27 Oct 2026 00:49:27 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 27 Oct 2026 00:49:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 27 Oct 2026 00:49:27 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 27 Oct 2026 00:49:27 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 27 Oct 2026 00:49:27 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ddc0c1e36a6793411b6c8d48e1ddad2987405d377da92bcf532ed3181c2e4d62`  
		Last Modified: Tue, 20 Oct 2026 23:31:05 GMT  
		Size: 30.2 MB (30200478 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ee0ed85d316bef287f21603339f87558fd1f0529e29e5246c20d6ace990ce83b`  
		Last Modified: Tue, 27 Oct 2026 00:49:52 GMT  
		Size: 144.6 MB (144648250 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ab0b9d6ae24602bf3de4a8b17d69d533607be6bba681846f337718428d9c4cd9`  
		Last Modified: Tue, 27 Oct 2026 00:49:51 GMT  
		Size: 68.8 MB (68805078 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38472fcfbb86001e3bda4af36d76dd2110e6f6774fb411654ff05950644421bf`  
		Last Modified: Tue, 27 Oct 2026 00:49:48 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2a43206f3e9a47723d3c430fde7b67a45602eb6115e3ea225f8c245e6960871a`  
		Last Modified: Tue, 27 Oct 2026 00:49:48 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:e6c97570074e3efc05d2d06b085ecfa53febeb1b9f33011b2c938956bc8b9e41
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5283910 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3d4764359554136caf6527d06a590c168bab98763b7efb97e2e13973d61e0365`

```dockerfile
```

-	Layers:
	-	`sha256:a2525e816663b1ea7f6d9ab1f946c987ec26ea6b43e689cfa36e985a308f2868`  
		Last Modified: Tue, 27 Oct 2026 00:49:48 GMT  
		Size: 5.3 MB (5267826 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d7e524c6d7b5fcefb3f643da0fdd6b6f4ff6192330cac2c9f94b695ed763ac3e`  
		Last Modified: Tue, 27 Oct 2026 00:49:47 GMT  
		Size: 16.1 KB (16084 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:e45f000dfc486f9212985a91c835ed63c80ded9f5ab8b2e6d90e34b17ba29190
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **253.7 MB (253743346 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:852646d4891277fb290e36deba47e18f5bfa8ce49e9cc85f20b7f309aea1909e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1792531975'
# Wed, 21 Oct 2026 10:22:54 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:22:54 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:22:54 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:22:54 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:22:55 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:31:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:31:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:31:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:31:41 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:31:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5e4eb9dc9f650fb59b641178db89dd4b48ea020427f346ce7f9d30a6b89bcd7e`  
		Last Modified: Tue, 20 Oct 2026 23:35:12 GMT  
		Size: 33.7 MB (33651935 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b14205fbba26894adf902cfcd4da08f03dbf8cc5016c01e991ea6e329381c7af`  
		Last Modified: Wed, 21 Oct 2026 10:28:12 GMT  
		Size: 145.7 MB (145671534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b43bb4f26011f63203de672561ea2aa44f1ad30bcde3145257902269eece8f1d`  
		Last Modified: Wed, 21 Oct 2026 10:32:37 GMT  
		Size: 74.4 MB (74418834 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d49ef48c93aaf9fe0f6f70f5f0fa11dfcf81f83185b624c179499837b8cd6988`  
		Last Modified: Wed, 21 Oct 2026 10:32:34 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4ad80b6c30a7671335fef099cbadd9c01c49d924a4b7b2accf4eca2ca4ca58a6`  
		Last Modified: Wed, 21 Oct 2026 10:32:34 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:87c4c675489199b4a61c289a25af4fbbc3f9a0e0851c50ae35447845a24c2169
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5282422 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6562f17c778925fd916d8eaf462434d27b073f0bc0e4cedf9d137fae03eed134`

```dockerfile
```

-	Layers:
	-	`sha256:03319837d34dcf9de660ffc6bc9748330663a7d15b950b2a66e610128b9a32fa`  
		Last Modified: Wed, 21 Oct 2026 10:32:36 GMT  
		Size: 5.3 MB (5266408 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a37c5979e0482298405c3aa19a7a730363efe67e54dc35a6337820c98f1c463d`  
		Last Modified: Wed, 21 Oct 2026 10:32:35 GMT  
		Size: 16.0 KB (16014 bytes)  
		MIME: application/vnd.in-toto+json
