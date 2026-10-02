## `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm`

```console
$ docker pull clojure@sha256:8a811a634ffec0832a81a58c428e3956d0bac1c68e27868dd216ae05ff51b7b6
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
$ docker pull clojure@sha256:8bbce77e283adc92c2ca49e561770b864120261e9214e3be0d480998ae4bedbd
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.3 MB (221259299 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8d0b8fbb5d18c22074604f99f90bf4cdae4ab2d24c0706e83b689c2100690609`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:49:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:49:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:49:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:49:58 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:49:58 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:50:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:50:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:50:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:50:13 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:50:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:098cdcaef39cfa6f06ed69070869332d5f2ae9dcf4b58707679eab9cf423f7c0`  
		Last Modified: Fri, 02 Oct 2026 02:50:37 GMT  
		Size: 94.6 MB (94563470 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b82076490f2bf07f6e74d2433664eb12e142058f3867b67d7ead7facce0d052`  
		Last Modified: Fri, 02 Oct 2026 02:50:36 GMT  
		Size: 78.2 MB (78191349 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f4a76e7e3fe4ce832426aed4398c63de4b7fda96d6f92b517810043cbd164f0f`  
		Last Modified: Fri, 02 Oct 2026 02:50:34 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2085d3c6fd81cacdffaf69d115a12cc2d90ce6c6d3cd5c21ff39a23fa17465ee`  
		Last Modified: Fri, 02 Oct 2026 02:50:34 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:98982009afc63f132bd9fe5d9b123f9532fc407881535f1b5ece9f83a013ef7b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7362825 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:11a9e3fcafd8e4f9f9fef93d6fc80db86cf78d0da8b8c3d58ff822ec69ad2bee`

```dockerfile
```

-	Layers:
	-	`sha256:622d99aae15b87f38055850980ba84bbfeb5d93d863e7bc01e5932688eaad556`  
		Last Modified: Fri, 02 Oct 2026 02:50:34 GMT  
		Size: 7.3 MB (7346217 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:125a2d275cc84b6a833a47dcc2806d007112487969b7db8d6902a8fb4e51871f`  
		Last Modified: Fri, 02 Oct 2026 02:50:33 GMT  
		Size: 16.6 KB (16608 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:fa061abae93137ed68c6366db62b127a9d9940bd2fe80653bba01bfad1521e62
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.1 MB (220108958 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0f19f34b0dd1de2140715eeb531d857ce6f9f5fa25a9e80ac0ce4f610a861657`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:49:51 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:49:51 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:49:51 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:49:51 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:49:51 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:50:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:50:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:50:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:50:06 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:50:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0813b54c3169bc7f2d2391bb9f57169abb41213028ef3559125cc9be0fead6e9`  
		Last Modified: Fri, 02 Oct 2026 02:50:29 GMT  
		Size: 93.5 MB (93543595 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:092d44d94e209516e41ca2c7d780d99254fc538f04b0ae2b562afb0ee69f0b72`  
		Last Modified: Fri, 02 Oct 2026 02:50:28 GMT  
		Size: 78.2 MB (78174410 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:348def64920aed078a7cff528babc7e749e810c4583e17cf0c1c9795863e1bc7`  
		Last Modified: Fri, 02 Oct 2026 02:50:25 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71577f8862b5184e4b9ee01b5fe9fd5972b0c61b361a44bcc8d15f02493fcbb4`  
		Last Modified: Fri, 02 Oct 2026 02:50:25 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:ac63d4bcd4d3b54315c9716a7d157098042022abf5ca7a953eb8b0687f901670
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7368752 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95e979996f332af25be416d59c6dd404ff0772834f38be37b9721cddb59820f0`

```dockerfile
```

-	Layers:
	-	`sha256:3c127c0f0e5e9ab61dfd3d380b592057ad18122f76e77bdb87b92accae90f91c`  
		Last Modified: Fri, 02 Oct 2026 02:50:26 GMT  
		Size: 7.4 MB (7352001 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a56adb30bceb305f90318bdb275719f635872f0ca150d92f29c7d15910d34c05`  
		Last Modified: Fri, 02 Oct 2026 02:50:25 GMT  
		Size: 16.8 KB (16751 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:5b29496c9bef8e8120a9d98048600c7faa87bea58ba651d8ffb639919b65cfd4
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
$ docker pull clojure@sha256:db8eb98cbbf9b56d4b2f57cd45d3960f849dce2a293fbfaf7921832e45e286bb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7352047 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48a1890cfc6f3196ed102e4a089d7fb89c194bc5f0d6ad7a73272ee5724e1053`

```dockerfile
```

-	Layers:
	-	`sha256:eafad09448100cbc7f1a7e1c3dab8a9a7fe671b1b25e57109867514982915ad5`  
		Last Modified: Fri, 02 Oct 2026 08:31:34 GMT  
		Size: 7.3 MB (7335379 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cd546203d49998457cf4db3b8b2efb32d14746766bdad0413661b0ed93d0780b`  
		Last Modified: Fri, 02 Oct 2026 08:31:34 GMT  
		Size: 16.7 KB (16668 bytes)  
		MIME: application/vnd.in-toto+json
