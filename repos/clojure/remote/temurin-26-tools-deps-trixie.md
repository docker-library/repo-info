## `clojure:temurin-26-tools-deps-trixie`

```console
$ docker pull clojure@sha256:818d2a48c5274c340e8a962c8115b9b2cf4b3185be6db00bd2de841446a41122
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:fb94ad1335cc8d60e1809ea100b06ad9907db0247b961d4312fb6c633487ecf2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.4 MB (232385223 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1f6f3c8dd7ec66b58c22757adb61b819d1babfcf65dccbe4c4a0ef38fd21c722`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:38:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:38:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:38:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:38:40 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:38:40 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:38:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:38:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:38:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:38:58 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:38:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:83c615ebaf4d35cf65b026da3bbbed01f13de87c6e3219f53842bf37bd156049`  
		Last Modified: Wed, 16 Sep 2026 04:39:19 GMT  
		Size: 94.6 MB (94563701 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e89e4474c7e2394b64a67834905422c96dc3fff9027d89e5c6038e7014293a81`  
		Last Modified: Wed, 16 Sep 2026 04:39:19 GMT  
		Size: 88.5 MB (88482654 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39e82045450eefb698957113883effeb700952cfdcae755b593746ca6c985ef0`  
		Last Modified: Wed, 16 Sep 2026 04:39:15 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bd3662fc15d84e25b59276220ec7f4db86f55e2567d65755d616283b4e2b23a0`  
		Last Modified: Wed, 16 Sep 2026 04:39:15 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a552c69cdad02e770fc0fcfbd85aa2b96cdb473aa0a0bda5a37b85c1e7631598
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7454737 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3f38d1693f9e370603a0e0239f976be148836920120b26535ef2a2dfb3834783`

```dockerfile
```

-	Layers:
	-	`sha256:21a0f80b3f19416bb98ebd47a1899e72fbb8cd21e5f211f0f9097e516ff04630`  
		Last Modified: Wed, 16 Sep 2026 04:39:16 GMT  
		Size: 7.4 MB (7438836 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:03420b3b27f5eb7f80db029b4c948b7e1d6da32776e9c6c298111dbac5fd36db`  
		Last Modified: Wed, 16 Sep 2026 04:39:15 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:57031ee38222db029f5e18623b9391ed0afd6b24dcdefd062dc94782dcce9f3b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.9 MB (231876549 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c002292298b37d0240ae25dd508ad120df0969f89a0c066b5c746515126d914`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Wed, 16 Sep 2026 04:39:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:39:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:39:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:39:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:39:31 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:39:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:39:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:39:52 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:39:52 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:39:52 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:045c70179eefb7b314c5545c64bb878abd567c9fc67677cc1582e216aa526257`  
		Last Modified: Wed, 16 Sep 2026 04:40:15 GMT  
		Size: 93.5 MB (93541605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e71c1e2a828ad734687cd0167b02b12e289228db6c5269f1f83d3f2c9b17ae24`  
		Last Modified: Wed, 16 Sep 2026 04:40:15 GMT  
		Size: 88.6 MB (88629047 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d0783bcf4a463984542d8b64d912b8ce3e982cf92c14320c8f6e517bbb2c8fb`  
		Last Modified: Wed, 16 Sep 2026 04:40:11 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6d23f2a227f2634999f195971bdfeb6c97c48f3d1368270ef1cc1d353029973d`  
		Last Modified: Wed, 16 Sep 2026 04:40:11 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:ba478b1ba8c32909ab5bbaef8a1a077f2e046925f5295338d4693472b7508263
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7461244 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:89f6054146d65ff26f66f86a57a37ad4004246e98f20acc7c288864a4373ca8b`

```dockerfile
```

-	Layers:
	-	`sha256:946cd30379c1488e9abf9baf7ce41a7c9250f6a480f04cd1e3cc4b71d91ac43b`  
		Last Modified: Wed, 16 Sep 2026 04:40:12 GMT  
		Size: 7.4 MB (7445226 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:88761ac93c615f693689021c639547dc08a0b50d9cc7e8b1262ab664a6d7f366`  
		Last Modified: Wed, 16 Sep 2026 04:40:11 GMT  
		Size: 16.0 KB (16018 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:ae4028dbd5974f357b31e30cceb849c3699ce5a8da7416bcea832609f8e68279
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.2 MB (238232912 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f31fe28d9485ee889ceb5e5d1698f908fb4ba7e684b1f0238cd67baab5a61566`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:34:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:34:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:34:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:34:56 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:34:57 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:35:50 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:35:51 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:35:51 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:35:51 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:35:51 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0c4043e66657eddd8a50944b0e499e9fb50476655ec17f37cf9fa8b81d6068c1`  
		Last Modified: Fri, 04 Sep 2026 00:36:34 GMT  
		Size: 93.4 MB (93350784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ada429cf761e0958bf0a459654d99184ed6e2592bdbdfb8ff13c92d7345ad79b`  
		Last Modified: Fri, 04 Sep 2026 00:36:36 GMT  
		Size: 91.7 MB (91716805 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ad8968d917ad5d48d647f517ed98ecca784364e198217fb2c54c7526af7a70d3`  
		Last Modified: Fri, 04 Sep 2026 00:36:32 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:628ca30f8063caffbf650ea8f2e9c8557d52b3e0837c182522f340ebb0f458c2`  
		Last Modified: Fri, 04 Sep 2026 00:36:32 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:090f105a714f48b200e07360b004efa676fc2131d272126347da27ec9c7df58c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7443070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e5f92cec6f72a840cedffbe4da782092ea987fa31cd294ddffa8109203a71091`

```dockerfile
```

-	Layers:
	-	`sha256:d7350b842f03caf3b5b5d9fdf00494cd9f5f6742c2e0f1af635f400e3ac2e9e1`  
		Last Modified: Wed, 09 Sep 2026 11:28:19 GMT  
		Size: 7.4 MB (7427121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a5949ff26c3606479d54565bd9bf54b26a51978a346af9770f67d019608d3ca6`  
		Last Modified: Wed, 09 Sep 2026 11:28:19 GMT  
		Size: 15.9 KB (15949 bytes)  
		MIME: application/vnd.in-toto+json
