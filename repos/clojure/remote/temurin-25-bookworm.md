## `clojure:temurin-25-bookworm`

```console
$ docker pull clojure@sha256:01039cb5367cc6633f782f9d949ef10cc4f0071f429436292dd11cbf5ed846e2
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-25-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:b329ef01a267feeecba57e095ba4502b03f70cc46599b1144f8d05d616bcceb0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.1 MB (219143449 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:49e2d6819e371af8c4813120818082f8643dd9b4191c6eec9e1721f199b0f60f`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 17:50:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:50:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 17:50:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:50:41 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 17:50:41 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:50:55 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 17:50:55 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 17:50:56 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:50:56 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:50:56 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:69245854ad5855991d16224f6abf55855d2d73922785206adea9c5c5988434a0`  
		Last Modified: Thu, 05 Nov 2026 06:15:52 GMT  
		Size: 48.5 MB (48526483 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d0184775eadf270c8c17579c8e8c8c07365e2c5412282e3b7037ff874c6adf7b`  
		Last Modified: Fri, 20 Nov 2026 17:51:17 GMT  
		Size: 92.6 MB (92613908 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c68b5fca7b0a1a235725127211e35333c61a0132702b415f6beb256fdb108afe`  
		Last Modified: Fri, 20 Nov 2026 17:51:16 GMT  
		Size: 78.0 MB (78001513 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:54a38197d7f673a0aa0e224aadbff16d47bd812a4b6d10cbeef90166b02010ac`  
		Last Modified: Fri, 20 Nov 2026 17:51:13 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c8f1d392f4fe0eac01d75b911d353cc4144b11614893d5341aae55529538c313`  
		Last Modified: Fri, 20 Nov 2026 17:51:13 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:c5a76bd631aec2632940eaa3123490c43549132da52452d5d9b840ceafd40f86
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7365963 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:78c971f4f00e7d945ef2b6af47b9225edd8ca8cd8c777780f1c0b3e20b975fe0`

```dockerfile
```

-	Layers:
	-	`sha256:576d633a477b299c7b1d3fb6fae5edb2f1c0d99f93bae2aa5eceda354de7d890`  
		Last Modified: Fri, 20 Nov 2026 17:51:13 GMT  
		Size: 7.3 MB (7348039 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c6efdf5c81b93b15dd4b3eb7fc1b9c42c0c617f9cae47f6c8b174a9d07cf2f01`  
		Last Modified: Fri, 20 Nov 2026 17:51:13 GMT  
		Size: 17.9 KB (17924 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:5562bfd960583b43b68c6ea403bd6dfad0953368825b44b9e6b8bbcd8a4ba9f2
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.0 MB (217966413 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:16486d94986b7c1ad589391c6d46566af7a3fe16a251bd7ace06f9a3bfcd7cec`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 17:46:20 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 17:46:20 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 17:46:20 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 17:46:20 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 17:46:20 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 17:46:36 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 17:46:36 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 17:46:36 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 17:46:36 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 17:46:36 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:f59e747f549eda321051637e213896378a19033924e1bfa7ae23a6572729c23c`  
		Last Modified: Thu, 05 Nov 2026 06:15:49 GMT  
		Size: 48.4 MB (48412454 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:584dc79deec7e7ade1cdc203a59202d39f3c3517bcf1c6ff844c2b378efd9222`  
		Last Modified: Fri, 20 Nov 2026 17:46:58 GMT  
		Size: 91.6 MB (91554010 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3a78094f12217eb4a62f6b148571802217501e6388b6c2fbbb208660a1d85871`  
		Last Modified: Fri, 20 Nov 2026 17:46:58 GMT  
		Size: 78.0 MB (77998401 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:755d779f2eaedc2dcfbf19ee0fc4846100fffe6aba0ddf74b5e52f7fa187ea2a`  
		Last Modified: Fri, 20 Nov 2026 17:46:55 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:e6542900b6d4afae826e6c50fc7f72d5fa8b6c19f7d2ac0bc8bc00d2f29894ec`  
		Last Modified: Fri, 20 Nov 2026 17:46:55 GMT  
		Size: 901.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:6678281e68e8e280f8dd53326787029ac2e6c22a94cc24e2f6fe8930c2186062
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7371986 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:9e8426502f72c7e2fa6050230d380e46b2c50b939d00454180cf42343240c949`

```dockerfile
```

-	Layers:
	-	`sha256:37887432432e484ad1a431d63159ed8285c2922d67290a2e2b829c7ff1ff3ced`  
		Last Modified: Fri, 20 Nov 2026 17:46:56 GMT  
		Size: 7.4 MB (7353871 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:085482d9f4630c3dd9a3d165de6ab5cf13bf80f57e336a9a36d43d1603c52833`  
		Last Modified: Fri, 20 Nov 2026 17:46:55 GMT  
		Size: 18.1 KB (18115 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-25-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:a6051f1650f62fd769abc2163928dd41c206c7097d1d1125a2d7476d89c5eb49
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **226.3 MB (226313785 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5750c4727c249821243d7677337383086c14cb25d943e34935f2c841fdbd9e44`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1793827419'
# Fri, 20 Nov 2026 19:10:03 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 20 Nov 2026 19:10:03 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 20 Nov 2026 19:10:03 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 20 Nov 2026 19:10:03 GMT
ENV CLOJURE_VERSION=1.12.7.1681
# Fri, 20 Nov 2026 19:10:05 GMT
WORKDIR /tmp
# Fri, 20 Nov 2026 19:52:34 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "4b0d4df753c477683c6237906e65cdaad1d30ab6283b3afe8abfbaca48e90120 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Fri, 20 Nov 2026 19:52:35 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Fri, 20 Nov 2026 19:52:35 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 20 Nov 2026 19:52:35 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 20 Nov 2026 19:52:35 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:c97e9d75b2e6da4e3fb7b0af2d3d5cae07d37a754f0b58190bd6a80c332cc2e1`  
		Last Modified: Thu, 05 Nov 2026 06:14:40 GMT  
		Size: 52.4 MB (52368620 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:91b2539b6b2dd6d3dc6544d4f155eddc3332014a5921fdd1a505ffcfc835be10`  
		Last Modified: Fri, 20 Nov 2026 19:15:01 GMT  
		Size: 90.1 MB (90119588 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5970fdb640a804e4702c2ad276c9f0ccc7f01d4062c2b1b974e420f18ec9120c`  
		Last Modified: Fri, 20 Nov 2026 19:53:15 GMT  
		Size: 83.8 MB (83824034 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3c137abc675b709ed78c475dacd61742543c4f8166d68df5f5874ab47ca3cbc9`  
		Last Modified: Fri, 20 Nov 2026 19:53:13 GMT  
		Size: 613.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0163d74d7fadbc5cd70f10d658648b14063e7c736e94daaea46b3ed110649af2`  
		Last Modified: Fri, 20 Nov 2026 19:53:13 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-25-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:6be26d2c20fafe72b2279a554e33a31e3f45b50cb639f0b4d29b219488c0ce76
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7352747 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7be07eaaf8aca1d69a6ff7f0965b8f2440c6861baabdc04df5175c743eeb144e`

```dockerfile
```

-	Layers:
	-	`sha256:94bb44bf240df9b8a3fc9c746b84ac24a57a46b5f2e76d6ed2a9c53f754f1040`  
		Last Modified: Fri, 20 Nov 2026 19:53:13 GMT  
		Size: 7.3 MB (7334738 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:539bf4721e16c0ad101a0a6fafa3db34c0794c271bf1c53efcb57196a4b50bcd`  
		Last Modified: Fri, 20 Nov 2026 19:53:12 GMT  
		Size: 18.0 KB (18009 bytes)  
		MIME: application/vnd.in-toto+json
