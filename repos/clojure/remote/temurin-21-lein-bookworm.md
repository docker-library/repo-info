## `clojure:temurin-21-lein-bookworm`

```console
$ docker pull clojure@sha256:16d11e758c5e55859614a30f8d6ba93469de1609707569695a76f0a75fc38230
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-21-lein-bookworm` - linux; amd64

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

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

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

### `clojure:temurin-21-lein-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:48a771ec3880db0ee9e1e2102c39ccac6873532d6ed37202f391bfeebaa8a307
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **229.3 MB (229273828 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:7c649ba8c25a5f8819110b80f11592d575eb6b537d1bbd416e802133d9414a20`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Fri, 18 Sep 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1789689600'
# Fri, 02 Oct 2026 02:46:27 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Fri, 02 Oct 2026 02:46:27 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Fri, 02 Oct 2026 02:46:27 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Fri, 02 Oct 2026 02:46:27 GMT
ENV LEIN_VERSION=2.13.0
# Fri, 02 Oct 2026 02:46:27 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Fri, 02 Oct 2026 02:46:27 GMT
WORKDIR /tmp
# Fri, 02 Oct 2026 02:47:39 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Fri, 02 Oct 2026 02:47:39 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Fri, 02 Oct 2026 02:47:39 GMT
ENV LEIN_ROOT=1
# Fri, 02 Oct 2026 02:47:41 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Fri, 02 Oct 2026 02:47:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Fri, 02 Oct 2026 02:47:41 GMT
ENTRYPOINT ["entrypoint"]
# Fri, 02 Oct 2026 02:47:41 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:450fe15cad1eddfa7c19e4191f4de2d5c46b0c201ddee1db8d6f41d2fec7a742`  
		Last Modified: Sat, 19 Sep 2026 00:02:48 GMT  
		Size: 48.4 MB (48389910 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:21a605111a1d28020ccbe61b856782efc577bef75ada1d59862dc906289b1398`  
		Last Modified: Fri, 02 Oct 2026 02:48:04 GMT  
		Size: 156.4 MB (156400658 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b875c52b78749abe678ac7fc63c2667b20ad8fa491c3e0492e15a6d1df47176c`  
		Last Modified: Fri, 02 Oct 2026 02:48:01 GMT  
		Size: 20.0 MB (19967609 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a8b706e5e42c961b4f496c17064242fed138192b674962b66f7c6379380a1314`  
		Last Modified: Fri, 02 Oct 2026 02:48:00 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d3516489baf4cd43e85d71b1019f7682c3a1e06a524e50b344f419123f6dd08c`  
		Last Modified: Fri, 02 Oct 2026 02:48:00 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:e1925e43b01d523a4c1fe1ac245b790ee8aca9161f40a89f10498c6dc3a8c22b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4309973 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:87f003fb93e61ec4ef26aba556463d2509c38f5a58a1c0d0cc2786c7b16d1a89`

```dockerfile
```

-	Layers:
	-	`sha256:bba07fbd2facb967faf0cd98b93195ad9e9cf8f7f62c1e31cd573538b96fcb7f`  
		Last Modified: Fri, 02 Oct 2026 02:48:00 GMT  
		Size: 4.3 MB (4291440 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:ae1f1eadd4c2a89f2619a2aeeef8c0d0a98e0edc5282de6b64d381c8eccba768`  
		Last Modified: Fri, 02 Oct 2026 02:47:59 GMT  
		Size: 18.5 KB (18533 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-21-lein-bookworm` - linux; ppc64le

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

### `clojure:temurin-21-lein-bookworm` - unknown; unknown

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
