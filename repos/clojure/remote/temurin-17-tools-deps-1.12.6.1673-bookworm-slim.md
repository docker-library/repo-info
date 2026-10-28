## `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim`

```console
$ docker pull clojure@sha256:ba6eff13c4dd3674d8b77c0e5fa765c77cef30f3c707d024114b0b23d7dd6b35
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; amd64

```console
$ docker pull clojure@sha256:8d0949d6c980879828da880c019a125c6ee77f6f74fbf8be9f902996f45edaf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **240.6 MB (240581687 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5d5055a1c3b26496b4e6d0017a2ccf7c4ffc431abf7a8ba3d21e801fb68d77eb`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:11:53 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:11:53 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:11:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:11:53 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:11:53 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:12:06 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:12:06 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:12:06 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:12:06 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:12:06 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:3c5439d0ae62993af4cc4e21b8c777297e81bc40e200d4633c85a3e0f977a3bc`  
		Last Modified: Wed, 28 Oct 2026 00:10:23 GMT  
		Size: 28.2 MB (28247437 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c21343a018a80f7c00efb553ab345e2796fb1dedf9f821a24d708f3a424500fa`  
		Last Modified: Wed, 28 Oct 2026 02:12:27 GMT  
		Size: 145.8 MB (145825488 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c2b2e179994b9e4c2f85d69982c6dcc5608720c799028fff86f83e7d0867e7d7`  
		Last Modified: Wed, 28 Oct 2026 02:12:26 GMT  
		Size: 66.5 MB (66507717 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:45c15aacfd3b1749d3ae2b9901aef959649c4e70bacc191f275850e7b3ebd6e9`  
		Last Modified: Wed, 28 Oct 2026 02:12:23 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59316c21c555100e5227a7de1f8f93beb1c9731bfb0e8c10ccc0269de6afab58`  
		Last Modified: Wed, 28 Oct 2026 02:12:23 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9baaebc8ab7e3ae1c8873ae2a0b6f458db624a89a2ad004d189ae0ef3e7fc66f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5134031 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b968b5908d4a8dd3202f5941579bd9f3ccc6dd2826f36123afbf85e7a6115252`

```dockerfile
```

-	Layers:
	-	`sha256:3d5ccbca33f6e37e74b6a52dc991c2b4155521e651d9fd06d00d8183a1b69d68`  
		Last Modified: Wed, 28 Oct 2026 02:12:23 GMT  
		Size: 5.1 MB (5118041 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:12ec19663acfeedb42001419973d714b0175cc65b53aba965a4d43d79cda079c`  
		Last Modified: Wed, 28 Oct 2026 02:12:23 GMT  
		Size: 16.0 KB (15990 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:1512e8e1b17b2683c30b40356c8030ed3289b6825e36cd979549d1dd1ad644a4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **239.3 MB (239288270 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9ac77288a12bb544575e756b08c831707574889f47c745dcfc54b4afe5fe2789`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 27 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793059200'
# Wed, 28 Oct 2026 02:18:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 28 Oct 2026 02:18:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 28 Oct 2026 02:18:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 28 Oct 2026 02:18:56 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 28 Oct 2026 02:18:56 GMT
WORKDIR /tmp
# Wed, 28 Oct 2026 02:19:13 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 28 Oct 2026 02:19:13 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 28 Oct 2026 02:19:13 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 28 Oct 2026 02:19:13 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 28 Oct 2026 02:19:13 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f791e47cf52abf7b364878f2141547e3781072e437f599f6632849d88fca8ca4`  
		Last Modified: Wed, 28 Oct 2026 00:10:12 GMT  
		Size: 28.1 MB (28137951 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b85e07ecdf97a10e4f1d12259b8c4dc0b2ac26ab534868dde464d8cff996ec34`  
		Last Modified: Wed, 28 Oct 2026 02:19:36 GMT  
		Size: 144.6 MB (144648276 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ce7740b91f25a9e0bf51da4248376e8c224ad4abd4600fa15d06ad11dc0cca4b`  
		Last Modified: Wed, 28 Oct 2026 02:19:35 GMT  
		Size: 66.5 MB (66501003 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:03f1f7a1a192bfd261a9e8fb175fc72cae27fd3b6d314ca26d16ef645f858538`  
		Last Modified: Wed, 28 Oct 2026 02:19:32 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:cbac61a58a72788623708a99f2c8a7a8ec05ef883e736e941d7341e0fa03e447`  
		Last Modified: Wed, 28 Oct 2026 02:19:32 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:1760780f8d06377c01c297d399040dd60a1ce7cd0ecfb16340fd56c258e2adf3
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139909 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a3adf701a8e521ba9ba4e46d9b8f87cd362b70ac4d9979a6b8848ceb6dadbf3`

```dockerfile
```

-	Layers:
	-	`sha256:848c2f8c7ecf2aace6c41cfef3e518e4856d05a9f55c4eb73cba3fbf89d334ae`  
		Last Modified: Wed, 28 Oct 2026 02:19:32 GMT  
		Size: 5.1 MB (5123802 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d6b52a7ab3172982e4c1c2c68831104cbf9bcb5e3e0a4b02713de1c69e9ab8f1`  
		Last Modified: Wed, 28 Oct 2026 02:19:32 GMT  
		Size: 16.1 KB (16107 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - linux; ppc64le

```console
$ docker pull clojure@sha256:ce761e685258e9e0376836212b3635f9b010b1859cc76515a9e3670f01461e8b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **250.1 MB (250098873 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dbaf8533e11098649a1dcae9ee65cce9cb7cf60ad0a48300014457c6ccd64e99`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Tue, 20 Oct 2026 21:32:55 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1792531975'
# Wed, 21 Oct 2026 10:16:32 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 21 Oct 2026 10:16:32 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 21 Oct 2026 10:16:32 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 21 Oct 2026 10:16:32 GMT
ENV CLOJURE_VERSION=1.12.6.1673
# Wed, 21 Oct 2026 10:16:34 GMT
WORKDIR /tmp
# Wed, 21 Oct 2026 10:29:21 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "5ae63b082ed33bf4c29bf1a8317c5c15249d1bc753676b2f5177fb3804ad6f77 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Wed, 21 Oct 2026 10:29:22 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Wed, 21 Oct 2026 10:29:22 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 21 Oct 2026 10:29:22 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 21 Oct 2026 10:29:22 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:dbe4b1ae261d30189a9f71db084062762a30a0c977f281a1fb8f9b8506a24e42`  
		Last Modified: Tue, 20 Oct 2026 23:30:07 GMT  
		Size: 32.1 MB (32093209 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bbee517126a754df9c55cf053e388fa44232986d93d455338c5c357816aaca83`  
		Last Modified: Wed, 21 Oct 2026 10:22:05 GMT  
		Size: 145.7 MB (145671508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:61265a6963f504dea9db1afd4e1ad7dc35c953c97a78af2bde47afc80c9c104e`  
		Last Modified: Wed, 21 Oct 2026 10:30:11 GMT  
		Size: 72.3 MB (72333112 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fb2031b82da7b9b3261433429c80a6ea17e05908b72713441fe74a69b157d2fb`  
		Last Modified: Wed, 21 Oct 2026 10:30:09 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:9de909e7e24b759d1110b30727f076b3f1011c21a2dc7871ee16390260eadf07`  
		Last Modified: Wed, 21 Oct 2026 10:30:09 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-tools-deps-1.12.6.1673-bookworm-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:af03715cef4d93552163f770df6f338512f899894f3d53f2bda85bd3058c0a7c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.1 MB (5139209 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:58b77fe9db02a6acc895338ee6c6ba7dbfe397c26ce371f094beb6d43d1850be`

```dockerfile
```

-	Layers:
	-	`sha256:ea57d20564943805d7c6070004722d94451ec29f834795d2c57f5de40105da7b`  
		Last Modified: Wed, 21 Oct 2026 10:30:09 GMT  
		Size: 5.1 MB (5123171 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:9b1aa19882fbbec4bba9cbe3479a1944e704fbcebe86f35e5808a4915f51f28a`  
		Last Modified: Wed, 21 Oct 2026 10:30:09 GMT  
		Size: 16.0 KB (16038 bytes)  
		MIME: application/vnd.in-toto+json
