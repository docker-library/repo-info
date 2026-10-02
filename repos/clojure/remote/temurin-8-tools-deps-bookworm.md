## `clojure:temurin-8-tools-deps-bookworm`

```console
$ docker pull clojure@sha256:ca2a340d940b03450038efaa176da6d00c538a36f8d59c20cc634d8aa68bc9ef
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-8-tools-deps-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:a2bd140dd826a8aa32dcd2e1b5d6c098daa6d3a0cd3697360e4a9aa2bc6bc246
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **181.9 MB (181887213 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:618343a56a74db5cfd526ec08efe5b75c3627574e3f142d33dba77342c135892`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:42:45 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:42:45 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:42:45 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:42:45 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:42:45 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:43:00 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:43:00 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:43:00 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:eaac70c68abdf6ffacf6de10d31ed9de4813505d1a794eb7393cb27fceb624a6`  
		Last Modified: Sat, 19 Sep 2026 00:03:03 GMT  
		Size: 48.5 MB (48503440 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:020b779d39b2b22e232d2a6bebb3a287bd710f8deb080852ce0230ea4ccd9971`  
		Last Modified: Fri, 02 Oct 2026 02:43:19 GMT  
		Size: 55.2 MB (55192277 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a2e9f8c08778583116bbc0869fb440c1e1830ca2e1af354b5748835384cf3e0`  
		Last Modified: Fri, 02 Oct 2026 02:43:20 GMT  
		Size: 78.2 MB (78190851 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:72649c759130dff78db576ef28cb61fe8fe3f6ba04210e85291add9302935922`  
		Last Modified: Fri, 02 Oct 2026 02:43:16 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:46d78ed6640b213b578414e392e356464a3497f7f2f7ffc0f1a241f502f407dc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7515342 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4e87d9fa086c4897162ed6061015c0d103b899becc6e57711137e08f8239ff0d`

```dockerfile
```

-	Layers:
	-	`sha256:b79681c9288c1587c73739e3bcd80fc16529dc57124f574c0cb6cd882e0e8561`  
		Last Modified: Fri, 02 Oct 2026 02:43:17 GMT  
		Size: 7.5 MB (7500994 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a608fd4c2dfef2e5282e9770d930bfb4ec7c3b7b6ffba9be4d8fa82c79a7e728`  
		Last Modified: Fri, 02 Oct 2026 02:43:17 GMT  
		Size: 14.3 KB (14348 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:53af7c963af928d69960c4e18dcabd4cb7340cc97b3dd88bc313ec4cb860a253
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **180.8 MB (180818474 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:8b05fbffe623662cfa3146d1e321214853d143a26e6593bb111a611b1dd2ab2b`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:42:37 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:42:37 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:42:37 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:42:37 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Fri, 02 Oct 2026 02:42:37 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:42:52 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 02 Oct 2026 02:42:52 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 02 Oct 2026 02:42:52 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8fbeaf998acbe16d8d23057e27d489e13ccc7b9195323ac58c21a7a0bf716787`  
		Last Modified: Fri, 02 Oct 2026 02:43:13 GMT  
		Size: 54.3 MB (54254288 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:623005d03fe2fc2004f21f527dfa24dbce4ac580451da31e92e1ad91f31e6f7c`  
		Last Modified: Fri, 02 Oct 2026 02:43:13 GMT  
		Size: 78.2 MB (78173631 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b3996727dcf0bd3c356a4fd24a014fe5cb4fc276d8a7f19f7290f05abb99a867`  
		Last Modified: Fri, 02 Oct 2026 02:43:10 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e3309c71c1405e578a8b904bd1de7a1ac97ee7e05f90dfdf8f2b15660310c9cc
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7521923 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:04ba52c31e4e552d5be0e4ce83ecf301be88e5e2a9a94bd4cd8dff810e34aed8`

```dockerfile
```

-	Layers:
	-	`sha256:7b1c413b2b12d7d0b527d2bd5bb068dd04e43676eaa039cb56235b9a58e143e1`  
		Last Modified: Fri, 02 Oct 2026 02:43:11 GMT  
		Size: 7.5 MB (7507457 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:744633c6d4f259c20fc80f80704195cb2f4eb732c188dbaa3e6b4bd3963952da`  
		Last Modified: Fri, 02 Oct 2026 02:43:10 GMT  
		Size: 14.5 KB (14466 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-8-tools-deps-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:c4c55fc2858d219d1545d1f67897026f2bd2869699b9dfd5867863b4c6260250
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **189.0 MB (189010356 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0e1b7a1cc6b3d9b04722e87ef0b262bddbb1d27dfa4529b4da3978b857062188`
-	Default Command: `["clj"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1789689600'
# Sat, 26 Sep 2026 03:43:36 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 26 Sep 2026 03:43:36 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 26 Sep 2026 03:43:36 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 26 Sep 2026 03:43:36 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Sat, 26 Sep 2026 03:43:36 GMT
WORKDIR /tmp
# Sat, 26 Sep 2026 03:44:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Sat, 26 Sep 2026 03:44:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Sat, 26 Sep 2026 03:44:13 GMT
CMD ["clj"]
```

-	Layers:
	-	`sha256:303f9548080ec7733e94ce124ddb2d901dc024b0db2d3e171bdfe62a1d04513b`  
		Last Modified: Sat, 19 Sep 2026 00:02:50 GMT  
		Size: 52.3 MB (52349305 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:597353bd3f036e38506926ecfad1af2b9bede5a39e5e1f5956aba3b82b934913`  
		Last Modified: Sat, 26 Sep 2026 03:44:50 GMT  
		Size: 52.7 MB (52667133 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2ff40d70c5d6838a7d7e674d6bbcbf106bc147aea3efb7a0be88581eda53acd7`  
		Last Modified: Sat, 26 Sep 2026 03:44:51 GMT  
		Size: 84.0 MB (83993272 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:66d1ff57abde652171fbb8130901193566953a8bf8db6dfe42f0eec17bddf747`  
		Last Modified: Sat, 26 Sep 2026 03:44:48 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-8-tools-deps-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e03a0a737a37960fa42626f70636e66901421601edcc913239824876acbef1c9
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7521198 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a44684742e0ef181aa67bda16d4986907f01b85ccd814bd30e1f12d542dcea07`

```dockerfile
```

-	Layers:
	-	`sha256:dbd79c7987ae3ab21a1d380ba3346643425712418556e6281019f2c0492b7337`  
		Last Modified: Sat, 26 Sep 2026 03:44:48 GMT  
		Size: 7.5 MB (7506803 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:062a84740296bb3400bc36917b7db77dfe2de7e279f41263f62e52c3c7f57e06`  
		Last Modified: Sat, 26 Sep 2026 03:44:48 GMT  
		Size: 14.4 KB (14395 bytes)  
		MIME: application/vnd.in-toto+json
