## `clojure:temurin-21-tools-deps-1.12.6.1673-trixie`

```console
$ docker pull clojure@sha256:1542424f379bdc1297ae23e94243720949eb220a48630c02d2448578e7c40a4d
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:7cc999219b112d0f3e27bbcc8adc19656e81a023f3ecfdbc4d156cb26640d354
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **293.5 MB (293529695 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:998c45ec2154cbe2eb43e11eed8061b630b9498c1f9d888c2584a2170a648a74`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:03:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:03:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:03:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:03:15 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:03:15 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:03:31 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:03:31 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:03:31 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:03:31 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:03:31 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:27ee9a8250487842a26b1ffa1215982ba9ae27010bce1997d52f9f8628578d17`  
		Last Modified: Mon, 24 Aug 2026 23:20:56 GMT  
		Size: 49.3 MB (49337828 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4262b132c356030445fae65edcc9719feeb38d44a6de21ea44524ad6836a7aca`  
		Last Modified: Fri, 04 Sep 2026 00:03:56 GMT  
		Size: 158.1 MB (158120291 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a9aba1136e4061e781dc43e49a45efe7117cc51a757180af90961c26ca95a7df`  
		Last Modified: Fri, 04 Sep 2026 00:03:54 GMT  
		Size: 86.1 MB (86070532 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7c7d6602a9621f10289d580eca2215d06c1f428c4313f6621926ecba4f29ac52`  
		Last Modified: Fri, 04 Sep 2026 00:03:51 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2270a0c3a3c6979de9a63dc15b4a84562e90af189eeb944ba3c53a51d61453da`  
		Last Modified: Fri, 04 Sep 2026 00:03:51 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:5abf2e1e6a53252d58d7b82289244a9f79345fb68400682d5c2a40e644fb3627
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491629 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e69ccda52797d725ca5d084b697b52483ecc2fbef633544350fbb2077ebdb0b`

```dockerfile
```

-	Layers:
	-	`sha256:178181fd86827b63685a432919bb4023dd242011e02766418ac519ccc70cd5bd`  
		Last Modified: Fri, 04 Sep 2026 00:03:51 GMT  
		Size: 7.5 MB (7475721 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ed605e18870d7a617f191e3e05d61201a6192b242c408aee8b55a130da77fd37`  
		Last Modified: Fri, 04 Sep 2026 00:03:51 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:601fcb36068f7c00f86bac5f2b4275d3e20c7682a5ba3fa3769a70cad1e34e71
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **292.4 MB (292375588 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0209bd5b5441ee37a85abe66d54cf75f0846b1827803f6102b2bac4586b5db36`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:07:29 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:07:29 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:07:29 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:07:29 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:07:29 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:07:46 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:07:46 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:07:46 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:07:46 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:07:46 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:7f50a08a25277c02b8dfc99818a21e12083215981e0aa03cb07cb74c9116f205`  
		Last Modified: Mon, 24 Aug 2026 23:20:48 GMT  
		Size: 49.7 MB (49704853 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:02424381eff83a0a4dd770eec19bb6734e9750eef509027bd2027a65c7ce082e`  
		Last Modified: Fri, 04 Sep 2026 00:08:12 GMT  
		Size: 156.4 MB (156401949 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:248ef18d8530d37e88647ed7e562c6db9d8c8c33702891bfe09e60671952d79a`  
		Last Modified: Fri, 04 Sep 2026 00:08:10 GMT  
		Size: 86.3 MB (86267744 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a75fd0de7c49fd093a948ef8c3ac9bcd64cc9911753942a9bfd0cf06ee99062a`  
		Last Modified: Fri, 04 Sep 2026 00:08:07 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54b3a0b6a9be132708deba23faa401e816c7e403ced7f37e01a98b1427ecfe5a`  
		Last Modified: Fri, 04 Sep 2026 00:08:07 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:93f4978720aed4b77aa648e3b78d9dc13c7638c8300ec72eb4423bdb2ef12cfe
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7498140 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:725380126b23e57e85f64b1d66ea0e16ade69ad26f9c2da155ef8a2e24458189`

```dockerfile
```

-	Layers:
	-	`sha256:fff33cc7618fe69f2ce2edec724d696fae7f2dd89c63bc4db7ad6c35d03e292e`  
		Last Modified: Fri, 04 Sep 2026 00:08:07 GMT  
		Size: 7.5 MB (7482114 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:7f09ba990534ca4c7e734e8777c3c511586441e7acd76911d7772ee72f44bd11`  
		Last Modified: Fri, 04 Sep 2026 00:08:07 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:b9757415f740e0172c3033a2151b22a6f02488546ffe8bbeb0e8e3d8cd6d9066
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **303.2 MB (303156945 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e1d11a704f56934231256f0b9e24bd4693f6cbeecf26a4708c1d17553834ebfa`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1787529600'
# Fri, 04 Sep 2026 00:24:31 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:24:31 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:24:31 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:24:31 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:24:32 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:25:33 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:25:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:25:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:25:39 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:25:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:9e8ba95bc0f758aeefc6ee2893238edfdc36acd4c619b64346a7e620439fd6d7`  
		Last Modified: Mon, 24 Aug 2026 23:22:19 GMT  
		Size: 53.2 MB (53164283 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:287354e4c6ec2cae513d4cbacde250853a1371b3e972277d907395058c66553b`  
		Last Modified: Fri, 04 Sep 2026 00:26:22 GMT  
		Size: 158.3 MB (158274892 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:62b846aa1037bcc14aa3dae0e19a7b57cb8145cc608a6b54e2c37f603b810fd4`  
		Last Modified: Fri, 04 Sep 2026 00:26:22 GMT  
		Size: 91.7 MB (91716725 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:283bcb980e4ec2e828452fc4aef292abdab0993c317b4c585090757212235ff7`  
		Last Modified: Fri, 04 Sep 2026 00:26:18 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9a239143c0c0c7a180363ae3463d69b1b7855d2062493da9ab46ad281fa53bf9`  
		Last Modified: Fri, 04 Sep 2026 00:26:18 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-tools-deps-1.12.6.1673-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:a325a69205ebb24e32c49a1ac2d70c41f9830a689c67721705958fcbfa4a7672
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7496098 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a8b2f33ff5226aedb8ee9e43fe8bbae17e84883fbbd2268caffb1d3a47148a33`

```dockerfile
```

-	Layers:
	-	`sha256:72b2436633c072fcae3e5633b1decf39b56b2f284a21b05be41bd324e965002d`  
		Last Modified: Fri, 04 Sep 2026 00:26:18 GMT  
		Size: 7.5 MB (7480142 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3390e82d19530fd02554acaa63ed0fadb8fe23fa7c74d90878fdfc536f388362`  
		Last Modified: Fri, 04 Sep 2026 00:26:18 GMT  
		Size: 16.0 KB (15956 bytes)  
		MIME: application/vnd.in-toto+json
