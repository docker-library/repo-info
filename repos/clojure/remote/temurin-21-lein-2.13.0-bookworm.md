## `clojure:temurin-21-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:724a7f5840394bf9e659730e5039bf7498f31185e747e3586dbab626b717c34f
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:b88e811e9c3098c29d8b09f3f5dc1842bf701e32a2789ef7a006e2a382799112
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **233.6 MB (233600151 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dadf311b017ea5c0e84fd08ebd17914a966dc675abe60ce9b9a1258de4ebab6e`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1791158400'
# Tue, 06 Oct 2026 19:11:12 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 06 Oct 2026 19:11:12 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 06 Oct 2026 19:11:12 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 06 Oct 2026 19:11:12 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 06 Oct 2026 19:11:12 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 06 Oct 2026 19:11:12 GMT
WORKDIR /tmp
# Tue, 06 Oct 2026 19:12:30 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 06 Oct 2026 19:12:30 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 06 Oct 2026 19:12:30 GMT
ENV LEIN_ROOT=1
# Tue, 06 Oct 2026 19:12:32 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 06 Oct 2026 19:12:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 06 Oct 2026 19:12:32 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 06 Oct 2026 19:12:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:8cb71386cfcfc55b27b559f73c6d5c0cdcb93b83be8281314116e271cc42cea6`  
		Last Modified: Tue, 06 Oct 2026 00:12:58 GMT  
		Size: 48.5 MB (48518022 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5290fe3a30b779327dd7bfc7538a2a49d3f428554fbc9cb35f14ae839deb7d7b`  
		Last Modified: Tue, 06 Oct 2026 19:12:53 GMT  
		Size: 158.1 MB (158117508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5557cb76fee45f76cdabe7d16069e5430fe079f15028f94ffdd2fb1e82850b88`  
		Last Modified: Tue, 06 Oct 2026 19:12:51 GMT  
		Size: 22.4 MB (22448969 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b91ded05b0c3c773b4a376a56e27b942f59002484545129d3dfc975db01d7b1f`  
		Last Modified: Tue, 06 Oct 2026 19:12:50 GMT  
		Size: 4.5 MB (4515222 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:440421b05d5fe1f82d1005f415f4741c4c33d5a446b9b8df9cd529bc1cc59205`  
		Last Modified: Tue, 06 Oct 2026 19:12:50 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:2fb2096d8f8c4d749bf7baf79bd67947a3cf191912027008b736f518df6a999b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4310188 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:e0c79e68410d2a090eb5ee1130d4dee798e99e2410f8c88b784113ac84cced9a`

```dockerfile
```

-	Layers:
	-	`sha256:a17820f6107e6c212b5ab9a8c69c1d36b937977486c0e426ed21694a15c38c01`  
		Last Modified: Tue, 06 Oct 2026 19:12:50 GMT  
		Size: 4.3 MB (4291801 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5c588b75504be552f0ccbf7d2716e39a615c1b662c0e9174a5326983216702d1`  
		Last Modified: Tue, 06 Oct 2026 19:12:50 GMT  
		Size: 18.4 KB (18387 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:05c84e5d17751ccb9f24a9c6c1d0a770cbae661777dbdac72947c97c1e7a7d48
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **231.5 MB (231547477 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:97de226004c90be4add478f061f2f4ded82ed9b77e72b0191feb2c565c422bd0`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Mon, 05 Oct 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1791158400'
# Wed, 07 Oct 2026 11:52:58 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Wed, 07 Oct 2026 11:52:58 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Wed, 07 Oct 2026 11:52:58 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Wed, 07 Oct 2026 11:52:58 GMT
ENV LEIN_VERSION=2.13.0
# Wed, 07 Oct 2026 11:52:58 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Wed, 07 Oct 2026 11:52:58 GMT
WORKDIR /tmp
# Wed, 07 Oct 2026 11:54:10 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Wed, 07 Oct 2026 11:54:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Wed, 07 Oct 2026 11:54:10 GMT
ENV LEIN_ROOT=1
# Wed, 07 Oct 2026 11:54:11 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Wed, 07 Oct 2026 11:54:11 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Wed, 07 Oct 2026 11:54:11 GMT
ENTRYPOINT ["entrypoint"]
# Wed, 07 Oct 2026 11:54:11 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:2a02c40189e361a19e7cb07374fe9925f5c4f7db254ae2b9196348c27c286b03`  
		Last Modified: Tue, 06 Oct 2026 00:12:46 GMT  
		Size: 48.4 MB (48401555 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c671d506c8018a2b8b477fb0c19cf82be8582c3cfc5cb5516818e34b2f0f5e4a`  
		Last Modified: Wed, 07 Oct 2026 11:54:33 GMT  
		Size: 156.4 MB (156400674 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1547733c802cc00aa2ea60b44519c1b69d3ef0472567269625953eafc27abed6`  
		Last Modified: Wed, 07 Oct 2026 11:54:30 GMT  
		Size: 22.2 MB (22229636 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b0be1b8008eab2cfce47be6622e55ee045759fdc037d16041bdff57a7f417bba`  
		Last Modified: Wed, 07 Oct 2026 11:54:30 GMT  
		Size: 4.5 MB (4515182 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ef61d591829a33fd10283ca2396a31f69c1e1e1c56d6c2459f9db5be4f587a6`  
		Last Modified: Wed, 07 Oct 2026 11:54:29 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:3825a64e2018f6df52af510f2d02ab53530b7dfa1ec99a36913b065fec94b769
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4309973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:33fb1827b7e027bedcd3851b086a37af40a30f4e20c9039b877d5ccb56fe03f6`

```dockerfile
```

-	Layers:
	-	`sha256:5d79cc4f29ec8917e109273fd053aba1e7c07345b83551e609ee7b3a2e7a46bf`  
		Last Modified: Wed, 07 Oct 2026 11:54:29 GMT  
		Size: 4.3 MB (4291440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:98e7bf4d0512306aaad57ade2cf00b445abc9c0ca7de3b5aa500995dc5e4b4e2`  
		Last Modified: Wed, 07 Oct 2026 11:54:29 GMT  
		Size: 18.5 KB (18533 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-2.13.0-bookworm` - linux; ppc64le

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

### `clojure:temurin-21-lein-2.13.0-bookworm` - unknown; unknown

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
