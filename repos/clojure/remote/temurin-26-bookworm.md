## `clojure:temurin-26-bookworm`

```console
$ docker pull clojure@sha256:a2c5a84adb7ec40edd33c127c6d287270f997616cc1fb21264ccc5c50c8b0221
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-26-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:9a075362727f641fe0f90f511d383bfced45108e4bc0f7969edaf0e2d2dd84c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.2 MB (221235786 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8e7b15893019a35b5316967821e5d84862af0bd794dce14afc616a069def18e9`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:38:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:38:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:38:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:38:26 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:38:26 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:38:40 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:38:40 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:38:40 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:38:40 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:38:40 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d4d7d5e0615348c367156651b03074528fffd08a42d10a0dc72634469a3b0ed7`  
		Last Modified: Wed, 16 Sep 2026 04:39:04 GMT  
		Size: 94.6 MB (94563717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f0635e16f3ece3cebc18ecfe7cc347273c4a4a37c0208cd2b9db314e0979ea46`  
		Last Modified: Wed, 16 Sep 2026 04:39:04 GMT  
		Size: 78.2 MB (78173664 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dbdc0b2ec78cae1545ea7da6c89cbbf9d794c00693d3bc26debe94e264e7b0eb`  
		Last Modified: Wed, 16 Sep 2026 04:39:01 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3e937baa793ca800c8406d4b1053cb07911257271bf056af0376c9077dc2037`  
		Last Modified: Wed, 16 Sep 2026 04:39:01 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:1627a5f95183aed2aebe4562833577c5fae3626826ebfc06a89a90f31ae9e22b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7362784 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8a76d0d32963c33aae050ee058f78530d5c2a36cd2889556ccf59109b35243d`

```dockerfile
```

-	Layers:
	-	`sha256:393a288b922ade80bdb9b8f2ebfda4db0936188a5b754efd71f670f8ebb54a90`  
		Last Modified: Wed, 16 Sep 2026 04:39:01 GMT  
		Size: 7.3 MB (7346175 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5f4ebac3a22ee3ca5bd5cd899c58eaf392212b3c9fb40e2f2db3edf0dfdd7dfe`  
		Last Modified: Wed, 16 Sep 2026 04:39:00 GMT  
		Size: 16.6 KB (16609 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:8d8218a7f0527b61a537183e735fc363e6d80fe7d536804cde58c2230c51a340
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **220.1 MB (220100883 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:54483b73de1575339d45b8bd19cefeb5096b8b2ae3d53414f170cb4427e44dcb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Wed, 16 Sep 2026 04:38:57 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 16 Sep 2026 04:38:57 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 16 Sep 2026 04:38:57 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 16 Sep 2026 04:38:57 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 16 Sep 2026 04:38:57 GMT
WORKDIR /tmp
# Wed, 16 Sep 2026 04:39:12 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 16 Sep 2026 04:39:12 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 16 Sep 2026 04:39:12 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 16 Sep 2026 04:39:12 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 16 Sep 2026 04:39:12 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f9d06f85281038652e5f402647aa7430905e01a43a5347fb91579af570d77bc5`  
		Last Modified: Wed, 16 Sep 2026 04:39:34 GMT  
		Size: 93.5 MB (93541605 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c35e0c67a1b197fca936bdb75729c00b4390532b44c69f3dfc51ca516c3dd743`  
		Last Modified: Wed, 16 Sep 2026 04:39:34 GMT  
		Size: 78.2 MB (78174590 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:212860b55776eba2a4af163ae6c8f0679624c999c179999c0b7e77cd39f16f80`  
		Last Modified: Wed, 16 Sep 2026 04:39:31 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e3c6be735483a6377811111f64d4d825528dd9916c01cc33c5c39c8427dbccf0`  
		Last Modified: Wed, 16 Sep 2026 04:39:31 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:34f5002819970f241327883c0086ebb89419031058955892b87db7ecaf4b37f0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7368709 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e446f975bdf2f7fa6b1b49776a12e67104c2a0be371238415800fea2857bcf88`

```dockerfile
```

-	Layers:
	-	`sha256:00c590c52764ec0e8077d97eb124523ea7ac5aaee41c63d6f871c8f5202ff2fc`  
		Last Modified: Wed, 16 Sep 2026 04:39:31 GMT  
		Size: 7.4 MB (7351959 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b344e6a026f135e255b486c29aa967cd11e93f6461791d920fff5682d3872828`  
		Last Modified: Wed, 16 Sep 2026 04:39:31 GMT  
		Size: 16.8 KB (16750 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-26-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:b3396753adf779795f1cf2fdfe085c1cb115fe751e2321c940cd61e16ed43dc5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.7 MB (229677928 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4c9c1e3d14d82e04fee35447b1062eff052cadc18ecadf5203a41bccd955a837`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Fri, 04 Sep 2026 00:30:39 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 04 Sep 2026 00:30:39 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 04 Sep 2026 00:30:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 04 Sep 2026 00:30:39 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 04 Sep 2026 00:30:39 GMT
WORKDIR /tmp
# Fri, 04 Sep 2026 00:31:26 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 04 Sep 2026 00:31:27 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 04 Sep 2026 00:31:28 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 04 Sep 2026 00:31:28 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 04 Sep 2026 00:31:28 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:08b5c0ba1d980dee6b8e75fb7cb4f75335f2fe42a232754ee7c0ef5fd543814a`  
		Last Modified: Fri, 04 Sep 2026 00:32:12 GMT  
		Size: 93.4 MB (93350784 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0569b5205f3e3b2b4186620a3cafd4ea8f09391a7b1cc80d0b3df1314973520d`  
		Last Modified: Fri, 04 Sep 2026 00:32:12 GMT  
		Size: 84.0 MB (83984337 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3fb5b52965899a879dc28df140549ed0a4099d5d51ba2600698afbf4ce07cf6`  
		Last Modified: Fri, 04 Sep 2026 00:32:08 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ae5655c99611b6954fbc21ff7ed7fb8d4354f77a454efca838a1cd19729b6ef`  
		Last Modified: Fri, 04 Sep 2026 00:32:08 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-26-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:51b27b07b661ac7e54ff372ae2011b66a36bafc60502bb6d6bf1c842f76afec3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7352782 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:47269ee9f3fa527f52c403eebdfdc88720830c1402cb79f078d428986bb486dc`

```dockerfile
```

-	Layers:
	-	`sha256:417006aee712b56b31602798ddff27bbbfbfff4acaca41aa9be51524564d0296`  
		Last Modified: Wed, 16 Sep 2026 11:02:03 GMT  
		Size: 7.3 MB (7336114 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:b58d929fadb28583ed209b591d474f5a7e2f47609dec37e64761dadb8240cded`  
		Last Modified: Wed, 16 Sep 2026 11:02:03 GMT  
		Size: 16.7 KB (16668 bytes)  
		MIME: application/vnd.in-toto+json
