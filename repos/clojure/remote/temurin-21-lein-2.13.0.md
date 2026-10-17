## `clojure:temurin-21-lein-2.13.0`

```console
$ docker pull clojure@sha256:1bb7b6f03e036cb1d68b3ce93ddc8841fb1a9dbdbc4be96e7ef4ee8569a7cac7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0` - linux; amd64

```console
$ docker pull clojure@sha256:93d9d6327dcccd966d8def401b0ee32df5f485708ee8c054cfd307dedb9e8916
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.6 MB (233588341 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27541924059b098774070d18fc46b3c80309ceae8847b5e9393608f12e6ace02`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:49:56 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:49:56 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:49:56 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:49:56 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:49:56 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:49:56 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:51:16 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:51:16 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:51:16 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:51:18 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:51:18 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:51:18 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:51:18 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:dac92c3ef3df36dbcdf162b4d5a63bca69a9b8f0d7b283d4e1ea7e91999b13fa`  
		Last Modified: Sat, 17 Oct 2026 01:51:41 GMT  
		Size: 158.1 MB (158117500 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ae85d1a4d2dd8dfeac33dfcca2030a8a6bd8bb1f71294877cb9bd342853d0c4c`  
		Last Modified: Sat, 17 Oct 2026 01:51:38 GMT  
		Size: 22.4 MB (22437183 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:912e54d9794752dad350e8a178f559bbaf27c508df1d6641e90db1632d372339`  
		Last Modified: Sat, 17 Oct 2026 01:51:38 GMT  
		Size: 4.5 MB (4515206 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc65378434ca8e75986003ef4eee4bb362859f1b903f94ca2bdac0300ea8fc8b`  
		Last Modified: Sat, 17 Oct 2026 01:51:37 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:7859e09a1e9ce24513123fa4540a47428e00b1f4121980eb67bde9a34b19fff5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310189 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:73d6d9011a6a5bff0f983104f58bd44c51f3ac20454683338ec8a260e9afac4c`

```dockerfile
```

-	Layers:
	-	`sha256:b28c40e247e7b33b1f0cd95e5e676423ab54fdc10c16fabd61185a842cdba276`  
		Last Modified: Sat, 17 Oct 2026 01:51:38 GMT  
		Size: 4.3 MB (4291801 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:1eef65a97903d323a327296087387b7e8b87cff273bcc27195ef72eaa25e511a`  
		Last Modified: Sat, 17 Oct 2026 01:51:37 GMT  
		Size: 18.4 KB (18388 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:35093ce2a425518a07f35de1aa459a1c4d48db0721fb8af4ea188fa32600f996
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.5 MB (231548064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c957a5d7bd720c4e7d84dcf9bdb866eaec818b08482f8dcbe2cc165047d2d9a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Sat, 17 Oct 2026 01:50:05 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Sat, 17 Oct 2026 01:50:05 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Sat, 17 Oct 2026 01:50:05 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Sat, 17 Oct 2026 01:50:05 GMT
ENV LEIN_VERSION=2.13.0
# Sat, 17 Oct 2026 01:50:05 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Sat, 17 Oct 2026 01:50:05 GMT
WORKDIR /tmp
# Sat, 17 Oct 2026 01:51:24 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Sat, 17 Oct 2026 01:51:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Sat, 17 Oct 2026 01:51:24 GMT
ENV LEIN_ROOT=1
# Sat, 17 Oct 2026 01:51:26 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Sat, 17 Oct 2026 01:51:26 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Sat, 17 Oct 2026 01:51:26 GMT
ENTRYPOINT ["entrypoint"]
# Sat, 17 Oct 2026 01:51:26 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d4006cbdb722691199d0db2b1081ac0eb5e5e7bed171e88ea4c99a55182ba25`  
		Last Modified: Sat, 17 Oct 2026 01:51:38 GMT  
		Size: 156.4 MB (156400641 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f81e989454a23353c735f47157f8aea931773834f663d3516f9d3f1658403aec`  
		Last Modified: Sat, 17 Oct 2026 01:51:46 GMT  
		Size: 22.2 MB (22230213 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:06195017c57e633e4ca04b7271cecd17cf9b75a33e0fe4548c3759fb889f4d54`  
		Last Modified: Sat, 17 Oct 2026 01:51:45 GMT  
		Size: 4.5 MB (4515225 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:16d76f3e1032efcd16d73c40bd67e9e83099695735fda55663bbb863352b0b5e`  
		Last Modified: Sat, 17 Oct 2026 01:51:45 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:dfdb0c87fe5a52e154a28b548fe384887257e65fd5982aa50500bfc976d95cfb
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4309971 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:301b4ed685228a2d1679447478f2ab17701b305d5563ef923bc97c116bc53363`

```dockerfile
```

-	Layers:
	-	`sha256:328917012301002beb823c493ae006eb15a8c879051ade983067bbacaaabd9c5`  
		Last Modified: Sat, 17 Oct 2026 01:51:45 GMT  
		Size: 4.3 MB (4291440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:605762dd3eb1aedf909d52d5573856286c22283faef5e8c33be4f07000410d03`  
		Last Modified: Sat, 17 Oct 2026 01:51:45 GMT  
		Size: 18.5 KB (18531 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0` - linux; ppc64le

```console
$ docker pull clojure@sha256:cc98e4e937a665b9f5201bb827191ec5e8a3aef3a32b9a6f570c3cf7913b8e4d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **238.0 MB (237992036 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1a1e54a3747500deeaf36265e20d86e817300a1778ba54888e8e616423227756`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 10:17:41 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 10:17:41 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 10:17:41 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 10:17:41 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 10:17:41 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 10:17:42 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 10:21:09 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 10:21:09 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 10:21:09 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 10:21:15 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 10:21:17 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 10:21:17 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 10:21:17 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:58cab6801365446bc48a7346cc006c3b6212080a71cffab9057f5537e165cff1`  
		Last Modified: Tue, 06 Oct 2026 00:12:12 GMT  
		Size: 52.4 MB (52362739 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:39eb49c79f6fd358bbb7683a7bb423a82f3f838344c42ac4fa4d3d7452e500e4`  
		Last Modified: Tue, 06 Oct 2026 10:22:16 GMT  
		Size: 158.3 MB (158282647 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0bf72642fffafc951a45e67ff9c96c737754957563dcbf2fc4dc55cb848aba45`  
		Last Modified: Tue, 06 Oct 2026 10:22:13 GMT  
		Size: 22.8 MB (22830962 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:97f91a1d88b707c746ceefc4682f9d6b8925a9776cb6073f2e6c30226a5bf9b5`  
		Last Modified: Tue, 06 Oct 2026 10:22:12 GMT  
		Size: 4.5 MB (4515259 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b4cb3ed2fb62fe4147652b5b123104b500d5908c7ac3c117b98ba39117422548`  
		Last Modified: Tue, 06 Oct 2026 10:22:12 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0` - unknown; unknown

```console
$ docker pull clojure@sha256:9018b09e5d5ac9aa5edb737023b0bf42658aef04421f542f78f35d23eaa2dda4
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4312118 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:27c2319e78ecf9be2e26248e97c8d81dfa5c5171eda63e05b84f95e398e66a8c`

```dockerfile
```

-	Layers:
	-	`sha256:8637c67353d83109d65ef558fe3037cb28403278a8f57995b61b5989602bf5c7`  
		Last Modified: Tue, 06 Oct 2026 10:22:12 GMT  
		Size: 4.3 MB (4293674 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:0338d83add5caaa8acc7258e1f603b0b956ad4c56fa4c0d239c603fe9a2f1b54`  
		Last Modified: Tue, 06 Oct 2026 10:22:11 GMT  
		Size: 18.4 KB (18444 bytes)  
		MIME: application/vnd.in-toto+json
