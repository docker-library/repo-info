## `clojure:temurin-26-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:00661f4c6662c291fbf8f3b1b86c79b9f6eec658f0645bbb80b6347bec034f14
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:a053f2ca2faedcbf649db8858175581ff03771dad11e4c345cc10160a1a0ae91
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **230.0 MB (229973062 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c641d1677a5a32f422de29a73f523219d58468e649223133223d584d02c0e14`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:04:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:04:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:04:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:04:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:04:30 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:04:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:04:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:04:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:04:46 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:04:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5460b4902d99955d3fe70712e6e50ab492ab858c90a9f938d6a2fefefd5b5f76`  
		Last Modified: Fri, 04 Sep 2026 00:05:09 GMT  
		Size: 94.6 MB (94563744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4bf753974b55af0981e889585f52bdea44e4a020a61133b825a3e23f7c054316`  
		Last Modified: Fri, 04 Sep 2026 00:05:09 GMT  
		Size: 86.1 MB (86070448 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:95fbdf046d15dcf19567232dcb22c5f432071b81625f0eabbb5e890b610edb8f`  
		Last Modified: Fri, 04 Sep 2026 00:05:05 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:51db341da5010529ca248874dcd4c34c155c7270bb441cea12db91eb26957ef6`  
		Last Modified: Fri, 04 Sep 2026 00:05:05 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:4dda02eda7f999b483b5e135a335e60f56f475cf021221ccbd81cfa9a8291981
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7454665 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bc48ea0b12a6d530c148e02af0a4f3b6965da9be902ac38c08d1dee6ba81b574`

```dockerfile
```

-	Layers:
	-	`sha256:c40fa33bd058ac2d5930a6fdca8f6af894507ce33486e052131cb3ec03926ffa`  
		Last Modified: Fri, 04 Sep 2026 00:05:05 GMT  
		Size: 7.4 MB (7438764 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1a461df7f58de3f00647875a91758a7d6850ed97ceb3aae2c496dd5d7e219550`  
		Last Modified: Fri, 04 Sep 2026 00:05:05 GMT  
		Size: 15.9 KB (15901 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:ee3149ad7a46832e68a49ee6c9ffa438a5702b3af7cae90c19f2b11870fc71d5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.5 MB (229515003 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b0a29528e70cf37af089073230bfe735e451c8fd8a0c553c20025b332c6d7366`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:05:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:05:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:05:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:05:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:05:31 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:06:20 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:06:20 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:06:20 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:06:20 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:06:20 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce9fbe2b893ed1413ecd4e1023426d76c375d89f71c27555747d72a83bf33b23`  
		Last Modified: Fri, 04 Sep 2026 00:06:43 GMT  
		Size: 93.5 MB (93541534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b52090ca7785695b6beaf484dd1b95e5a48acb75a4e3b6a053cfeb09e9291844`  
		Last Modified: Fri, 04 Sep 2026 00:06:42 GMT  
		Size: 86.3 MB (86267572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:749e888fcb7f0d43bebec9980249d1de15dc9b128fe349a4bbf23c6109926984`  
		Last Modified: Fri, 04 Sep 2026 00:06:39 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ce4e666251370d19f19acf8dcb20ed6d85dcd7269474aa814d1159cceeaa116`  
		Last Modified: Fri, 04 Sep 2026 00:06:39 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e07802cfb4de5e1764759ea19e5c4b5b201f01ef25d1bf59b5c7d148fce4120d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7461173 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7644dec9ac8a4dde46489ebfcd24a3da423c6ec403e48c7d642e3040b6326328`

```dockerfile
```

-	Layers:
	-	`sha256:1711251bc015381ba7c287d0e3578346cc4544a67c783ad0a2673f041df781e6`  
		Last Modified: Fri, 04 Sep 2026 00:06:40 GMT  
		Size: 7.4 MB (7445154 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e8932a552205f988e1f827edb048e6d751d529df7dcdd8ac8d4e849fcea7f727`  
		Last Modified: Fri, 04 Sep 2026 00:06:39 GMT  
		Size: 16.0 KB (16019 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:d477ee3114a6fa5a10c7cbc3850d7391e7b08a1145806ae24722da943875fb95
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

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f45d39af5fc3f0f64fdc41a963ae88fbb89bec5ec71f73a4c66c7bc64f7c8517
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7443070 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a6924f37adf69c6da1f388d7a016620c63987418563707c3c9fd38368b85a95b`

```dockerfile
```

-	Layers:
	-	`sha256:9a3be858650a9cfe6b11ef7e4af7ac00359b72022b7d686f8124aa019b051c94`  
		Last Modified: Fri, 04 Sep 2026 00:36:32 GMT  
		Size: 7.4 MB (7427121 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:e40397228721e40fda9f3e2b9d5936a759420214b3982988b9de7066aef3f013`  
		Last Modified: Fri, 04 Sep 2026 00:36:31 GMT  
		Size: 15.9 KB (15949 bytes)  
		MIME: application/vnd.in-toto+json
