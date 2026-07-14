## `clojure:temurin-17-trixie`

```console
$ docker pull clojure@sha256:1ced622d99fa3f715ccaf43a1fc4371160d31a6429d520f67e7ec2bdbfd81a8b
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 8
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown
	-	linux; s390x
	-	unknown; unknown

### `clojure:temurin-17-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:e894904b437c4d51af7093abe1d2f318055af1373c1e64aa6117f38322a5e7f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **277.8 MB (277753617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a20b842d7607bfad436a0699b6b16cb7d9b01dff9dc64ec901ddba615f77673d`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:19:02 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:19:02 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:19:02 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:19:02 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:19:02 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:19:19 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:19:19 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:19:19 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:19:19 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:19:19 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:b890c9407285c31d25426ef154b55c72e225f19b478a59451b01a8a44f5ea4f7`  
		Last Modified: Tue, 14 Jul 2026 00:14:54 GMT  
		Size: 49.3 MB (49312572 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b08d309672dc5620b3a2092895650c2ec386cb9242b99261530bc39a245167c`  
		Last Modified: Tue, 14 Jul 2026 02:19:41 GMT  
		Size: 145.9 MB (145906310 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b62ab133923df8afe093d352df31750455dd41fca27b07be7bf2f919647d8d12`  
		Last Modified: Tue, 14 Jul 2026 02:19:40 GMT  
		Size: 82.5 MB (82533696 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e90cde099c56ff053ff7e524a75c2fcf188d955297f9deb2e20b9912e96cf508`  
		Last Modified: Tue, 14 Jul 2026 02:19:37 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8547715258e73b8c4dae0276e15ae432325563acd0c82da04607b132c55cb93d`  
		Last Modified: Tue, 14 Jul 2026 02:19:37 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8330f7bf460646ede22caabac4fdfc1611184a6b20ea40eaf51e3e496927c2e6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7484769 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e9a7ed97d32461b5c36f7f7aaf4a54b45c84fc6e7392931e2aad6050e7896104`

```dockerfile
```

-	Layers:
	-	`sha256:b1550e304643bf4d79970c46349cbfe2390ba56e7ba068b018add5bb1b941c55`  
		Last Modified: Tue, 14 Jul 2026 02:19:38 GMT  
		Size: 7.5 MB (7468861 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:edbcf123f95dba89bad159812681b65ac52a3f27ff990186b7eeed4367ad0a3b`  
		Last Modified: Tue, 14 Jul 2026 02:19:37 GMT  
		Size: 15.9 KB (15908 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:69acf8c85f5973fc0eb1e17068c750a333c6e8f9a94e0dc9a1d0f80dcfe40f43
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **276.7 MB (276742952 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2ed4ee92bd87b145b6842aad6c95087fc64f646be7568e97cc6633ad5a3ab9d0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 02:26:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:26:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:26:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:26:40 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:26:40 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:26:58 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:26:58 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:26:58 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:26:58 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:26:58 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:6b89e501e8efce0d3d87e3f6b0f85c417e799a3b36b8f44419609ba7fecf9563`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 49.7 MB (49674184 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7901f7f541a13e1abd3e6758bc6ee17effaae9d53d95fcdb484ee38b12ba12dd`  
		Last Modified: Tue, 14 Jul 2026 02:27:22 GMT  
		Size: 144.7 MB (144724328 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5315ae0ccb09a33b62dc4bb8c4e8a59a5b4bc161c5232826f94a8365aa4facd7`  
		Last Modified: Tue, 14 Jul 2026 02:27:21 GMT  
		Size: 82.3 MB (82343400 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:25698317321bbfd1a8c20b82d3a607bb62d0b8cc337537175f7b7038fee4fb15`  
		Last Modified: Tue, 14 Jul 2026 02:27:18 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0d4883c4fc61ce20308d7b9a85e05f49ab69e5281ed0346671bd82fcabfcd224`  
		Last Modified: Tue, 14 Jul 2026 02:27:18 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:e51a807e8d0355a586f43ce16d8802a469479e540702f2edff70af8625d6903a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7491280 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:cacd71e62322d8f222744509b16a5d5637ac0d29527f022a34e306f2bed93f25`

```dockerfile
```

-	Layers:
	-	`sha256:1e09912081365a1fd7d3cd27fb4c65cc433d406242f3c1275280d37edf55b6a1`  
		Last Modified: Tue, 14 Jul 2026 02:27:18 GMT  
		Size: 7.5 MB (7475254 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:aa0c74f2f6f851477596e360ad582bad806bacf8419c471a56556b586891c8f1`  
		Last Modified: Tue, 14 Jul 2026 02:27:18 GMT  
		Size: 16.0 KB (16026 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:1fcf3cf23d5fc161eb050c6d439ad04e4adaa340049b34e8dd4f8744365387f1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.8 MB (286840547 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:716dba64326c14625df900d410adef4176735619baef930a301741adbd75adaf`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 08:26:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 08:26:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 08:26:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 08:26:03 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 08:26:03 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 08:30:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 08:30:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 08:30:14 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 08:30:14 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 08:30:14 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:745b2c9d3139d6aed0b2af22d15f023d127776cd4cd5c9d5188be038d8d70a3e`  
		Last Modified: Tue, 14 Jul 2026 00:15:39 GMT  
		Size: 53.1 MB (53134011 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5ea428e4c364e945f66c79e137b273d40f211f2143dc8c0c45603244648457d5`  
		Last Modified: Tue, 14 Jul 2026 08:29:50 GMT  
		Size: 145.8 MB (145766164 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed2143c2c8984da841034b811725fd402fc31a33132c634a5e67f5621d624d8b`  
		Last Modified: Tue, 14 Jul 2026 08:30:51 GMT  
		Size: 87.9 MB (87939331 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:517244a66c5cb90fd45ed85dfa675caefcf23e6c7b8199da837aa7b475d608fe`  
		Last Modified: Tue, 14 Jul 2026 08:30:49 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020940126db9893aee970f74d71331ae7d56f61f8b07aef13d78fe57b2efa952`  
		Last Modified: Tue, 14 Jul 2026 08:30:49 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:fd164abc6d56f73281bb000e7cfd9db5880cee1fbd78b173baf61fb6ceb51652
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7489237 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1b4fc3ba6a8788fc186332a14cddbab4c0d7a72a07ccc7c394006ec49244620d`

```dockerfile
```

-	Layers:
	-	`sha256:f7f388655f3c642c9f56a300427b53cef2c7498643d097eb77674cfa34bbb83d`  
		Last Modified: Tue, 14 Jul 2026 08:30:49 GMT  
		Size: 7.5 MB (7473282 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:44c455922e9d629d6f316465ddd8621c57af11d07d1b5612137417464649374c`  
		Last Modified: Tue, 14 Jul 2026 08:30:49 GMT  
		Size: 16.0 KB (15955 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-trixie` - linux; s390x

```console
$ docker pull clojure@sha256:0a1e307c0ab0f92d76a0130fb20156383c14ae169b31ca143ea5b4695a84449f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **268.8 MB (268795565 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2e5a6d9666b187315b1cf10696b67cd5e5461032d136ed8204946a2cffbd97d7`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'trixie' '@1783900800'
# Tue, 14 Jul 2026 04:28:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 04:28:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 04:28:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 04:28:28 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 04:28:28 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 04:30:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 04:30:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 04:30:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 04:30:38 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 04:30:38 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3b67c0872a1a1dce2849ed0a6773531451a02c1a681d58d89f062b6003c72e9c`  
		Last Modified: Tue, 14 Jul 2026 00:17:47 GMT  
		Size: 49.4 MB (49381708 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7fbe1a0b4600b2b9ee025d059e6fdc80e6b5a97def084a70dbb1ba8441ebc364`  
		Last Modified: Tue, 14 Jul 2026 04:30:00 GMT  
		Size: 135.9 MB (135910440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9ec5809652ce3f2bbcd224163569e094d052a698b28879a500ee4e687278db8`  
		Last Modified: Tue, 14 Jul 2026 04:31:05 GMT  
		Size: 83.5 MB (83502377 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1af8dd0cb2ebd7430b909a695536c4205142989cb1259fa50aef7dcb7752d84b`  
		Last Modified: Tue, 14 Jul 2026 04:31:03 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:98de91b95ae9033d917636aa1eb69120b06d9d337798a6f53be6a9effa01a676`  
		Last Modified: Tue, 14 Jul 2026 04:31:03 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:34377e3538e0d7dea6b5688393f94fb72f4dec08cc07c5fb818510b76c848179
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7480690 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c695901b6bbb027401d561f486092eb8c415c32373c011ddd47a6c4906e40958`

```dockerfile
```

-	Layers:
	-	`sha256:4c8d862efc77110b2d2d2a8901622c7f8b1f8edc33719b5e46e0a528d18411c9`  
		Last Modified: Tue, 14 Jul 2026 04:31:03 GMT  
		Size: 7.5 MB (7464783 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:cc6a9b332591b178333c83bd9593f3bab275fdabda48cb6db2a118c4a14f25da`  
		Last Modified: Tue, 14 Jul 2026 04:31:03 GMT  
		Size: 15.9 KB (15907 bytes)  
		MIME: application/vnd.in-toto+json
