## `clojure:temurin-17-trixie`

```console
$ docker pull clojure@sha256:734d8db5ce5130d2e4e2d192ed4341b474ad77b63d071fc1037aa564079a5469
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
$ docker pull clojure@sha256:15b71463e23a741f26fb1f5980a619ef9b57f312ca5122ce2f17d772182baf56
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **286.8 MB (286844134 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:06f41e364d18d60ec9f753eebf01c4464c4159e72fd5fd8dcae3c221d99b6c91`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 23 Jun 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1782172800'
# Thu, 02 Jul 2026 07:11:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 02 Jul 2026 07:11:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 02 Jul 2026 07:11:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 02 Jul 2026 07:11:27 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Thu, 02 Jul 2026 07:11:27 GMT
WORKDIR /tmp
# Thu, 02 Jul 2026 07:18:07 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Thu, 02 Jul 2026 07:18:07 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Thu, 02 Jul 2026 07:18:07 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Thu, 02 Jul 2026 07:18:07 GMT
ENTRYPOINT ["entrypoint"]
# Thu, 02 Jul 2026 07:18:07 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:99b7058514c1f9221ac3b0625d731341802c32d464fd604a099ae71d3765bbfd`  
		Last Modified: Wed, 24 Jun 2026 00:30:31 GMT  
		Size: 53.1 MB (53138069 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21fb6abf97389a5480079f9476410ce8496802854d1eea95873a807f0a0b4c36`  
		Last Modified: Thu, 02 Jul 2026 07:14:43 GMT  
		Size: 145.8 MB (145766153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f39ee26f1ec825d8dfa0509e6c5d44c71054b79d9d081d20b8f3bea3430af5e`  
		Last Modified: Thu, 02 Jul 2026 07:18:49 GMT  
		Size: 87.9 MB (87938869 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b5ea15ee9fa72bd1d9c54dc8cf03faacbf7f8d063e088d5d4e6025da72900b9`  
		Last Modified: Thu, 02 Jul 2026 07:18:46 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8bb28861f204ad873b36142a523651da02d8925d0e13a23efd798a3bdef4e12b`  
		Last Modified: Thu, 02 Jul 2026 07:18:46 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9d659c124fe61c441fab507d73d48b23993719ef62a1315c3ab612da9b00f849
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7489184 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:aa5d05b774fffd55e0ef4ea2b34cb8b051dcb83ed772b7694a258d4c9a8aae6a`

```dockerfile
```

-	Layers:
	-	`sha256:3b414dca77eaa6abd3b14ef31937703446f0f385ee4855819a0571dcf0f7e043`  
		Last Modified: Thu, 02 Jul 2026 07:18:46 GMT  
		Size: 7.5 MB (7473228 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a6283d088b1653bccf0f94ca403f8129b05f552e208553e328b9384726fdc16a`  
		Last Modified: Thu, 02 Jul 2026 07:18:46 GMT  
		Size: 16.0 KB (15956 bytes)  
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
