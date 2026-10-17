## `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim`

```console
$ docker pull clojure@sha256:ff527ea332347dcfd7a6ee24110b5fd36cc4a31989022228f624808a7772954f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - linux; amd64

```console
$ docker pull clojure@sha256:d8c037b2214c376dd85bbae2861326a0aad4b9ca988550e8e1297e7a31dc51ed
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **193.4 MB (193397723 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b3a983ed2fd44f7e3129d29298d4fac0892f2362f28f545f8fc29f13e38a28e3`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:54:22 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:54:22 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:54:22 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:54:22 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:54:23 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:54:37 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:54:37 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:54:37 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:54:37 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:54:37 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ecc510c1e359bdc007b39802570bb7e4dec7d6ebccf357c3201a74299113e05e`  
		Last Modified: Tue, 06 Oct 2026 00:13:48 GMT  
		Size: 29.8 MB (29843350 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:32ed7b6d10a84ec1bad3790af413028852bb1f72cf49adfa058365c44fa584d8`  
		Last Modified: Sat, 17 Oct 2026 01:54:56 GMT  
		Size: 94.6 MB (94563480 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1cf344a1bd5aec0ad45e0e2616588313c71436afa97e8327e14531e3e9259a11`  
		Last Modified: Sat, 17 Oct 2026 01:54:56 GMT  
		Size: 69.0 MB (68989853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cc111755f82ec5e704f2e663073cf7b112eaaf665a21f2e1b5be241546e1793b`  
		Last Modified: Sat, 17 Oct 2026 01:54:53 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c1690ffd91b442a7c37eb9f43aa8b3852e82b8d11da3568a15ae5de1e8276910`  
		Last Modified: Sat, 17 Oct 2026 01:54:53 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:46d9b9402cad268177e05001f0203be4e9de7cb228f73b46fa7138c477c6750b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5244165 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2c153265c8165d81a45baeb93632bce37bef80f4683c8189ce9df0b89fcd292e`

```dockerfile
```

-	Layers:
	-	`sha256:a2cf57ad3e2898978f849c5b8fef02f4c3213e6468e5615214b5b8f9b2935f3c`  
		Last Modified: Sat, 17 Oct 2026 01:54:53 GMT  
		Size: 5.2 MB (5228207 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0d4a039a8bf4afd1a87db064ca771adb55dfc6cc0dc7388384c0798bf4c5cf28`  
		Last Modified: Sat, 17 Oct 2026 01:54:53 GMT  
		Size: 16.0 KB (15958 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:df12b53588706bc8520bf3fe7c64d9d9559e3b4465f77d58472cd17afe85a674
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **192.6 MB (192555446 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:48cbdbcc00955b03a3badbbac68512b79c50a89d2b83d340cf56b2fbe1d8ef4f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 01:54:48 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:54:48 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:54:48 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:54:48 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:54:48 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:55:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:55:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:55:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:55:06 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:55:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:bbeda6b4abb749f743f4547ef5a28070a14de8caef211daa5afb78d5b5fa21ba`  
		Last Modified: Tue, 06 Oct 2026 00:13:55 GMT  
		Size: 30.2 MB (30200282 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:009e9359e7140d40a2700bc23f9a98f6ed2f826c1816b710a10ae98fa15a7418`  
		Last Modified: Sat, 17 Oct 2026 01:55:28 GMT  
		Size: 93.5 MB (93543589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:295a753b7103c85064a17f024ba9c41d84ab761a7d725e3798d3a0de6c28a4c3`  
		Last Modified: Sat, 17 Oct 2026 01:55:27 GMT  
		Size: 68.8 MB (68810534 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d14aa7fd38b9db62207ce346c1d8d5d5e3553bb66e4776786bef9f191b43011`  
		Last Modified: Sat, 17 Oct 2026 01:55:24 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e0d50a86e7365f30c861ab743c3acbc2b7b532316b0c9f7cc13f9550f9ef5f5e`  
		Last Modified: Sat, 17 Oct 2026 01:55:24 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:4e6db672458960a1403418e0bc6e16f5f77af644e1052553ea4ca3e14259a3dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5250042 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:12f63d237e9522795a3e54e605bc10fe446beb24994fa3361b4436465b7f0a3b`

```dockerfile
```

-	Layers:
	-	`sha256:bbbefb68166886d143bac036910b4aaf050d0162cf1c813bdd6cae6deac6cf8f`  
		Last Modified: Sat, 17 Oct 2026 01:55:25 GMT  
		Size: 5.2 MB (5233965 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:311ce93814839e69536622a899134b6b7fc162b2820c8334e54a53f590ae181f`  
		Last Modified: Sat, 17 Oct 2026 01:55:24 GMT  
		Size: 16.1 KB (16077 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:be83b57dc11e00ac445b886d72f371c6b3b893f80d02d8b6ee6e62fe706f67e7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **201.4 MB (201420733 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8c2cdf02c825d30fca5a077b0745ab99b7704e96cf946f7c9318822df152c180`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1791158400'
# Sat, 17 Oct 2026 06:44:59 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 06:44:59 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 06:44:59 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 06:44:59 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 06:45:00 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:52:57 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 06:52:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 06:52:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:52:58 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:52:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:5ca0f09a490b90798516816fc3a5f086b1467ed56f5252150458c41384c9aa5f`  
		Last Modified: Tue, 06 Oct 2026 00:16:24 GMT  
		Size: 33.7 MB (33651599 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6275636597043f36e4bc7c271ac19ada4a6931e012217b3564adbc0c86125c7`  
		Last Modified: Sat, 17 Oct 2026 06:49:07 GMT  
		Size: 93.4 MB (93350847 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1e5e5a1a1eb6a2c167c28254cdde4baeb610543f9533f399a4541be8f8d833c6`  
		Last Modified: Sat, 17 Oct 2026 06:53:37 GMT  
		Size: 74.4 MB (74417248 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:30b9db1844420cc1ad0c9ffe137deafa9970e2390260927fd6f8c910de5c5f95`  
		Last Modified: Sat, 17 Oct 2026 06:53:34 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ac9b7d7cd511c1df4115a56222348779a467b9baf02a8aa5139586b8afe33d6`  
		Last Modified: Sat, 17 Oct 2026 06:53:34 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-tools-deps-1.12.6.1673-trixie-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:88da3024d9820c016c11d174502eb0e1ee6edcf2d54e69ff94f36b961364af51
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.2 MB (5232521 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:568b6141805fea4c4ad20d89ae29091a843b6fedb9503b943af35e41f9505b7a`

```dockerfile
```

-	Layers:
	-	`sha256:93f8eb9492f706423a3bceeb1c64f886da6a92360293367aa40b073f025533cc`  
		Last Modified: Sat, 17 Oct 2026 06:53:35 GMT  
		Size: 5.2 MB (5216514 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1d9b9578f2ee23d553a14a8a5ca163e87d25fafd36f98fd4f54a808801171aa0`  
		Last Modified: Sat, 17 Oct 2026 06:53:34 GMT  
		Size: 16.0 KB (16007 bytes)  
		MIME: application/vnd.in-toto+json
