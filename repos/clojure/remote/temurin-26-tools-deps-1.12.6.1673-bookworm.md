## `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:721a9abeb4a3aeedab17e342b171697d077afab616b71d589d397fe382ca5b8d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:7ba5b16b649ee40e448afb55bd761c5e1ca8abde131c301f098a7b6c344cd542
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221250349 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d8f20b0b7a2eb65d0cd5fcbf5d1586abccc1f9a47f1024ae24ce4698f75a66b8`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:26:04 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:26:04 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:26:04 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:26:04 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:26:04 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:26:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:26:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:26:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:26:17 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:26:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0c4b0346cdbd56668281a0af9ff91e39d6dff57c7b211c115645a9227b6f704`  
		Last Modified: Fri, 25 Sep 2026 23:26:39 GMT  
		Size: 94.6 MB (94563471 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d75f048b26512c2a466b16b0b2f373d17e7264d6031e21549ac085494c23b3df`  
		Last Modified: Fri, 25 Sep 2026 23:26:39 GMT  
		Size: 78.2 MB (78182396 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:040fa1fc067054c836f14bcc90655e0a1f000504f7e38c98c6b72b9a7ecf3fcd`  
		Last Modified: Fri, 25 Sep 2026 23:26:36 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:db8f27160dd6ebcad650a2c8b3d846a606d4035d5c7610aea7c972a35fb78c5a`  
		Last Modified: Fri, 25 Sep 2026 23:26:36 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:5b95fc18223fd5ba877263428a0ef2a63ebb88e93e384d5b46023b5b36965797
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7362826 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:314b3793994379febddf7afd31381078b61e94f7d29aac42cb11f2422e97e59a`

```dockerfile
```

-	Layers:
	-	`sha256:8de6088aac09a56040959ea3060c6b75c1e7e6b224889dee586445a2211f017c`  
		Last Modified: Fri, 25 Sep 2026 23:26:36 GMT  
		Size: 7.3 MB (7346217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7530024e5aac047e80db2153acae6ffe1e4c932635176735d13bbcdf4062196c`  
		Last Modified: Fri, 25 Sep 2026 23:26:36 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:829fa302a7ac54c3b79a918abe43e82a12449e2f0bb2840df91e02307583818d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.1 MB (220106957 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:043039da908d0a48d77daec15a2a7a210c1a7096bbeea32fc4391aabe5b695ec`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 25 Sep 2026 23:23:47 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 25 Sep 2026 23:23:47 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 25 Sep 2026 23:23:47 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 25 Sep 2026 23:23:47 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 25 Sep 2026 23:23:47 GMT
WORKDIR /tmp
# Fri, 25 Sep 2026 23:24:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 25 Sep 2026 23:24:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 25 Sep 2026 23:24:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 25 Sep 2026 23:24:01 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 25 Sep 2026 23:24:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24d190057e9c5c2ab6018a1a9df5f3110cd2ba07b54b31c7c316b6a011337548`  
		Last Modified: Fri, 25 Sep 2026 23:24:24 GMT  
		Size: 93.5 MB (93543605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0e80646b0a7804264a53fe7b8817e7a5798ca0e8ebd1c267f83dcb68d15c9be7`  
		Last Modified: Fri, 25 Sep 2026 23:24:23 GMT  
		Size: 78.2 MB (78172399 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1181daebc1a3f5a1d8e8600bb383016b141b237f2684714870a0d3cf64c8ddfb`  
		Last Modified: Fri, 25 Sep 2026 23:24:21 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:427be9876a6a312d5a987b013df90b46a2a0d2602aed241038af25fd12e2f2a7`  
		Last Modified: Fri, 25 Sep 2026 23:24:21 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:c61836fce97a832eb7350c75d1116062bf2a124eb4335badd7f077b9cbc8b286
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7368752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:17e8395f204acb0f32fcdfc8e77489d4e68634f948e07cc515fe7fb2535baeff`

```dockerfile
```

-	Layers:
	-	`sha256:5b9ddd6e825f47fa997d72296fd92ee62af944ce0dde0943393fb1f4cdec835d`  
		Last Modified: Fri, 25 Sep 2026 23:24:21 GMT  
		Size: 7.4 MB (7352001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:fd75302c96bf9ea9f36cad6b4b632727512a9856fb2a81937c1489912bfc3f21`  
		Last Modified: Fri, 25 Sep 2026 23:24:21 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:3e682cdd8c5f1557bd0430fa494df8eed6ed8e145e2f955889db1a0a0752c58c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229694189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:99e32d109feb916b2b778d204f8fb12cb9f029c6803316a863e76728cd7823c5`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 05:39:09 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 05:39:09 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 05:39:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 05:39:09 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 05:39:10 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 05:53:44 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 05:53:44 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 05:53:45 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 26 Sep 2026 05:53:45 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 26 Sep 2026 05:53:45 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fbe1c80a24e121d2ac2567e4fd9e76e2c1d95008d253d91f02a5a94e71c053cb`  
		Last Modified: Sat, 26 Sep 2026 05:42:13 GMT  
		Size: 93.4 MB (93350875 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c5df3f92290c093ae091a23ef65d811cf232c3fae672689902cf694a104e5d0`  
		Last Modified: Sat, 26 Sep 2026 05:54:23 GMT  
		Size: 84.0 MB (83992969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbaef1eff1b2b94006612787d4147bdda089b446093987d96f4a8d90557ae31f`  
		Last Modified: Sat, 26 Sep 2026 05:54:21 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:180b2cfbcc6d230358e912f123f68dc31efc0f665ce8f5c0a1b409e32f6d48c1`  
		Last Modified: Sat, 26 Sep 2026 05:54:21 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e1950e461d35c514b3891b8a791533e495ca9a3894b584b1b8a8cf6e7e30100c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7352048 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ad3e7373a67a0bf757854c12da1d9fbc16f2673f1114ac34975850e94ea12380`

```dockerfile
```

-	Layers:
	-	`sha256:653e39736492646dd0cb0d6640af1b8f96e73c9754b1f45fc3657443ece22d45`  
		Last Modified: Sat, 26 Sep 2026 05:54:21 GMT  
		Size: 7.3 MB (7335379 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:153712e719604d998fbf8783bc3ae2459cb4dac36d8e7d16d3d1f2001d088ace`  
		Last Modified: Sat, 26 Sep 2026 05:54:21 GMT  
		Size: 16.7 KB (16669 bytes)  
		MIME: application/vnd.in-toto+json
