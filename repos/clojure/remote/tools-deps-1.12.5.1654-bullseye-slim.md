## `clojure:tools-deps-1.12.5.1654-bullseye-slim`

```console
$ docker pull clojure@sha256:632287ca9c8219885c16050a49ac708a52b7c4c6a185afae50ae5c5f33a6da14
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 4
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown

### `clojure:tools-deps-1.12.5.1654-bullseye-slim` - linux; amd64

```console
$ docker pull clojure@sha256:6505eaede8b8c5ae050e6c472ba0a4e5500d2e8cf8d65ab02402d65b09b0f965
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **178.9 MB (178935805 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:15544e675e494f2664a75ddab6e25dcfe312d88ecc97e330a5ff12028ba3a594`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:22:26 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:22:26 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:22:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:22:26 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:22:26 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:22:39 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:22:39 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:22:39 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:22:39 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:22:39 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:ab6b8caf16d7f68b8a98637a233a98f662552e76d428a4510f2c6950bbe017f9`  
		Last Modified: Tue, 14 Jul 2026 00:14:38 GMT  
		Size: 30.3 MB (30259754 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:bdbb0340fab0a642ed8ba0b89e647e428a5e9b4da5b862241a120009654c025f`  
		Last Modified: Tue, 14 Jul 2026 02:22:59 GMT  
		Size: 92.6 MB (92574624 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:aa072b5b5c71f47c7624fe0d56706bcfdc5ac34ec6903ba017f0875563322abb`  
		Last Modified: Tue, 14 Jul 2026 02:22:59 GMT  
		Size: 56.1 MB (56100387 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:10c0afb2d5e30c2749d9ba5580d5860f82106856bdfe58c0acf196c4017062cb`  
		Last Modified: Tue, 14 Jul 2026 02:22:55 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0579cf6d82d7a71f1d90e3cba80c7a7855aff564cf118154b0e94c710e98cd3a`  
		Last Modified: Tue, 14 Jul 2026 02:22:55 GMT  
		Size: 396.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1654-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:9e2ef9c7ac612da9f5e6e88f39c18768b268995f4156c3280ee2812c1f47d518
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5302617 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:01d7e86570924ff04f60c12878eb34b7ccd5329b51911f2eccdc85230a6cffa4`

```dockerfile
```

-	Layers:
	-	`sha256:b100410455fc143e5644b6814e07f5fa7e932c67fdfa9ab61fdaf57f3393b52a`  
		Last Modified: Tue, 14 Jul 2026 02:22:56 GMT  
		Size: 5.3 MB (5285939 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0b00c84af1b0237d824701d24c84e8953bf07d0500fb303b49e57135bb4d023f`  
		Last Modified: Tue, 14 Jul 2026 02:22:55 GMT  
		Size: 16.7 KB (16678 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:tools-deps-1.12.5.1654-bullseye-slim` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:bd2c6e94de932c5b727baa47a03c8a07251cb79ddc98e1fde498c08bd78e2050
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **176.6 MB (176560063 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:0ecb5b985997b35f9286c2050b0629ff7141ab23742103c5a315498281a9b850`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bullseye' '@1783900800'
# Tue, 14 Jul 2026 02:29:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 14 Jul 2026 02:29:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 14 Jul 2026 02:29:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 14 Jul 2026 02:29:28 GMT
ENV CLOJURE_VERSION=1.12.5.1654
# Tue, 14 Jul 2026 02:29:28 GMT
WORKDIR /tmp
# Tue, 14 Jul 2026 02:29:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "28f81b0833c0a072f4370ae0eb1e4c5a4f9f4a34035cd7607ea9f253a8b06da1 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 14 Jul 2026 02:29:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 14 Jul 2026 02:29:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 14 Jul 2026 02:29:41 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 14 Jul 2026 02:29:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:61f836bad84b9e0ba9e3fe1a558be02d0d6378b8ecb4f3c1ef8f656e9e30e1f5`  
		Last Modified: Tue, 14 Jul 2026 00:14:15 GMT  
		Size: 28.7 MB (28748984 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:625d1fd0fd6221fcbd1eff1f495f447db68a375f1c96494c0526a5c573b1b0e5`  
		Last Modified: Tue, 14 Jul 2026 02:30:01 GMT  
		Size: 91.5 MB (91542252 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1f2aa4191b274251dc22d686e52b46d048bd8dbf91400f98e32a4c133ba2dec7`  
		Last Modified: Tue, 14 Jul 2026 02:30:01 GMT  
		Size: 56.3 MB (56267788 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b66a65c4319d25721b7c55dd132581558b1dd70e66c9ad6e039957baa32a900a`  
		Last Modified: Tue, 14 Jul 2026 02:29:58 GMT  
		Size: 612.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4c2daf74da237d9fb1e9a1b5233af42f482c143bb9099bba82b6f0257575a566`  
		Last Modified: Tue, 14 Jul 2026 02:29:58 GMT  
		Size: 395.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:tools-deps-1.12.5.1654-bullseye-slim` - unknown; unknown

```console
$ docker pull clojure@sha256:a5fb784c995c26df1da122f155dd10e867ac00f1d335e8c46df62c7e77959d75
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **5.3 MB (5308513 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:fc880826d609ea4b20de3d84b0cbbddb3e6ee5b6fb41547f7b5ab945d8c9da5a`

```dockerfile
```

-	Layers:
	-	`sha256:553e8ebaa82da7c73dd232dac1a8c25155f3e03b03f661b60132a0b35f67498a`  
		Last Modified: Tue, 14 Jul 2026 02:29:59 GMT  
		Size: 5.3 MB (5291692 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2a2c0568d5cf84f4c09822896f5a3e28500c233f0f248b102bf6c3a8cf0864f4`  
		Last Modified: Tue, 14 Jul 2026 02:29:58 GMT  
		Size: 16.8 KB (16821 bytes)  
		MIME: application/vnd.in-toto+json
