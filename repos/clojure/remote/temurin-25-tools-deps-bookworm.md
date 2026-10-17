## `clojure:temurin-25-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:c3adea8f87618dbb29f11e1a2734b422c87c8a2a719e0c20e27555fc1a5f74b2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:ec68d0b2747ffecc284b0959d3815039223f30b1161761c0d3456c1ef2af7c22
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.4 MB (221424444 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:ef09d5dbbb03b7011ad92db7dcbc0fcce145e94d4c4d55023cf823f2364c0e0b`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:52:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:52:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:52:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:52:03 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:52:03 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:52:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:52:21 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:52:21 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:52:21 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:52:21 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:103e0a66aec277a46396f4be8bc908a19e82c1812c052589d8af4d1183d85099`  
		Last Modified: Sat, 17 Oct 2026 01:52:44 GMT  
		Size: 92.6 MB (92617997 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:41396945d62ff3fa9a8eef38f265d6c5ed357b326d60b2270ad08d035a0f5f89`  
		Last Modified: Sat, 17 Oct 2026 01:52:44 GMT  
		Size: 80.3 MB (80287382 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9eba1ef695e671f656d9683e79cb4ff804acedeecb1c107d400ebc372a3d04da`  
		Last Modified: Sat, 17 Oct 2026 01:52:41 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:75fb2eb6cc52dfbf731a97f1f2333c410b35daeae192463e9d5b6a9213b739f2`  
		Last Modified: Sat, 17 Oct 2026 01:52:41 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:6008e0726dc8180bee59073d6c7574b908470deb6488935fe67950ba38133984
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7367961 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4d801069189ef2c82f7f4087b1a3def58b372ec50112a440472c424a26c837a1`

```dockerfile
```

-	Layers:
	-	`sha256:6c799bcc0138ddbdf144bbf10318dc75d298e9d4141c4be2b651b90399040ce9`  
		Last Modified: Sat, 17 Oct 2026 01:52:41 GMT  
		Size: 7.4 MB (7350036 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:323246006a56cdbfe24ad8ef6a5b0d61b20e8dcba3eff21aab17659e19ed656f`  
		Last Modified: Sat, 17 Oct 2026 01:52:41 GMT  
		Size: 17.9 KB (17925 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:97a31a7dddcb21a5d53854b774449f0efd18a85dfa407805448aa5c0761aea1e
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.2 MB (220173945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:19ca74c304d750dc7677d779af363e4fa2ba2c8566f5859bfed0cb2f670932cf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:46:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:46:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:46:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:46:20 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 01:46:20 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:52:17 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 01:52:17 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 01:52:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:52:17 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:52:17 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c6ca56f03c8a515a6d25224b097e8175ec599de91c0c384daa366cd874a6993`  
		Last Modified: Sat, 17 Oct 2026 01:48:18 GMT  
		Size: 91.5 MB (91528870 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:33ab8dbda228a46211654180a81aaea926c30b6c03786a8f8cadf4b4ec95a6a0`  
		Last Modified: Sat, 17 Oct 2026 01:52:36 GMT  
		Size: 80.2 MB (80242476 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ac149c2b59a5a0e6e38e8671d842238dd52e8d5933754ef86d6d8900fe7c54ab`  
		Last Modified: Sat, 17 Oct 2026 01:52:34 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5b92f5aaae0ab276cbbc4d0e08c7bb4e0e739e9453005e4b03091795bdf55b80`  
		Last Modified: Sat, 17 Oct 2026 01:52:34 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:b21d3aa3b1ad50bcf33d764fd72cc577735b691a675a06db0f40e087f66f6a03
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7373030 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fe3c1fbfe5d10d623700e617bbe4838c20519e986a2f7e9ca178c85c64885699`

```dockerfile
```

-	Layers:
	-	`sha256:f20217cdac3520d3ebd8e110fda366796523683415481d501679a06c2330047f`  
		Last Modified: Sat, 17 Oct 2026 01:52:34 GMT  
		Size: 7.4 MB (7355868 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b345d9c9fc93e29a09e714ad32b4fc26d184f942158c4d50078125d96a834d32`  
		Last Modified: Sat, 17 Oct 2026 01:52:34 GMT  
		Size: 17.2 KB (17162 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:eeddd719c758e8d38c3ce04bb85e3e58606744238618eca95266bda40f0571b8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.9 MB (229910302 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:10bde8f897cd254168dd7494b89aa757f0be7f98f174a94c91118d2c60769c3d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 05:05:30 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 05:05:30 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 05:05:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 05:05:30 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 17 Oct 2026 05:05:30 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 06:29:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 17 Oct 2026 06:29:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 17 Oct 2026 06:29:42 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 06:29:42 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 06:29:42 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dc1c5845314da8e226dc3a22aca7de15561d086b538c43c929f5ee27a4b09b48`  
		Last Modified: Sat, 17 Oct 2026 05:11:25 GMT  
		Size: 91.3 MB (91256239 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bb775cc96bfa83b2d8efd4bae885bb519a3475c0dbacefe4df7607dfae10f7cc`  
		Last Modified: Sat, 17 Oct 2026 06:30:24 GMT  
		Size: 86.3 MB (86290283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4689f5fda3c6277afe2d426689e3be93b5f6e9d28d29dd77c5fcdcb6d4439c11`  
		Last Modified: Sat, 17 Oct 2026 06:30:21 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d734d8ef6cdbe7ddb2b761058833b4497f65299340c9e2dca803b867f8dddae7`  
		Last Modified: Sat, 17 Oct 2026 06:30:21 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:758b392b9b5da4ae2e42dfbc64cb59786dc89fb18aa5ca3406f576048b6069c4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7356607 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0bff1caf1df3ff1e3a7976b58b31aab0a0e1f3338c764300e8af2e1fcb072873`

```dockerfile
```

-	Layers:
	-	`sha256:9b4bdcc847c1192e1a26877be6970dd4625e1a4f3ac0cad7ec59b9c398f41af0`  
		Last Modified: Sat, 17 Oct 2026 06:30:22 GMT  
		Size: 7.3 MB (7338598 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:190e66a76edad3c6e8dacf9a30bdeda195980af97f27e75121120a56704cf424`  
		Last Modified: Sat, 17 Oct 2026 06:30:21 GMT  
		Size: 18.0 KB (18009 bytes)  
		MIME: application/vnd.in-toto+json
