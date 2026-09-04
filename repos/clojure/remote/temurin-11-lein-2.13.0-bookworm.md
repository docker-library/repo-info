## `clojure:temurin-11-lein-2.13.0-bookworm`

```console
$ docker pull clojure@sha256:b93a08853f064303c241d478b7c1a213c0c0eed7d3b7def1e8cfbf9a15d57559
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; amd64

```console
$ docker pull clojure@sha256:eef339a9b50d4da9f2787ac4391382a091a34c57d7b7b2b1bc9ffe808f955ab6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **219.0 MB (218997347 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:bdabd16672a63b528295078449c1cde3e280f41b7518ca632b213ab8ac89dc1c`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:25:34 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:25:34 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:25:34 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:25:34 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:25:34 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:25:34 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:26:44 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:26:44 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:26:44 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:26:45 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:26:45 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b31dacc1cf2427c7d3f0c8b44a14fd9e3fb71e2457378dbed20f0a6edf7bac31`  
		Last Modified: Tue, 25 Aug 2026 01:27:06 GMT  
		Size: 145.9 MB (145861368 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:2272da8c37e97af04d04ac6cac45c132e1b4b1692dd847eac6c330c26efc8f6d`  
		Last Modified: Tue, 25 Aug 2026 01:27:03 GMT  
		Size: 20.1 MB (20123416 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:565301b8596c9d5b8af60e757e696d64d460c7bed61979940cce03a3f841102b`  
		Last Modified: Tue, 25 Aug 2026 01:27:03 GMT  
		Size: 4.5 MB (4515169 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:9fec55eb0afb8a9008524e8dece263f6996705cce0ef0bfc5812c4c4b7cf1aab
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324518 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:95692008df2a202d7d8923b8f3800cb3f6d6af337384f900e8634896acc5779d`

```dockerfile
```

-	Layers:
	-	`sha256:fdfc53d39bff061aabc087159cdbc16bd046a3ab8c56a2271feb4ee086ba0f59`  
		Last Modified: Tue, 25 Aug 2026 01:27:03 GMT  
		Size: 4.3 MB (4308771 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dc94ae506776f87b75f8b1ef8be114bca223738b1b162fb1e85500a5a04e6319`  
		Last Modified: Tue, 25 Aug 2026 01:27:02 GMT  
		Size: 15.7 KB (15747 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:464e6f1caafbc312a0b50c5dcaa431603bfa638482f093b0d40b785654858e4b
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **215.4 MB (215420851 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5c909a78a2168913d683c7be43c448cda5f12605c732c2aa180244388f017b82`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:29:40 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:29:40 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:29:40 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:29:40 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:29:40 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:29:40 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:30:50 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:30:50 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:30:50 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:30:52 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:30:52 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:da3865ab626d2cdbf02db69343d2ba5e529b275d5b3d777e7f0f4015079e2b84`  
		Last Modified: Tue, 25 Aug 2026 01:31:13 GMT  
		Size: 142.6 MB (142566567 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7844d6ed63a4aeef316de99e9d29cd15ff2e66baffc09f5f906d474560192650`  
		Last Modified: Tue, 25 Aug 2026 01:31:10 GMT  
		Size: 20.0 MB (19955403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fcde9fc62f8c229bf73ac4cc5f2d6382f8e51c2973e3a4a50f15c242cd46e52c`  
		Last Modified: Tue, 25 Aug 2026 01:31:09 GMT  
		Size: 4.5 MB (4515200 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:d3b62982dade675fcd26301896530486c9dfe39530bcbb85f3df0076d2f4a859
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4324872 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b4a93da47a73e76eba167f529b56a77a9925f38b10dc9f9eab2101b7a1eb804e`

```dockerfile
```

-	Layers:
	-	`sha256:fda2a28b627b26954359195abc7cde58f8decdd98bed0335b5ab7f7fa3b78c39`  
		Last Modified: Tue, 25 Aug 2026 01:31:09 GMT  
		Size: 4.3 MB (4309004 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:237d8f96d8125581bcafd6b0ed4eed0885b0a1b69ed14a4ec3f1f9aa06653e7c`  
		Last Modified: Tue, 25 Aug 2026 01:31:09 GMT  
		Size: 15.9 KB (15868 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-11-lein-2.13.0-bookworm` - linux; ppc64le

```console
$ docker pull clojure@sha256:09a4dff9f544735ea8a2e51d8f737bcec2ab45bb6d024ddaa031be55bba53b5c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **210.3 MB (210295336 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:a4dc772b87358b3bcff6e3da8ec87a27fb647565e5adda2eb1267d290cf1c8eb`
-	Default Command: `["lein","repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 08:05:28 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:05:28 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:05:28 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:05:28 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 08:05:28 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 08:05:28 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:07:53 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 08:07:53 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 08:07:53 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 08:07:57 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 08:07:57 GMT
CMD ["lein" "repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b2405f96ed1dd60f8f17f3c506cff38375a2ea7b87a2f2eb1c07f08e3eae6453`  
		Last Modified: Tue, 25 Aug 2026 08:08:33 GMT  
		Size: 133.1 MB (133089921 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1acc53fb44e0cf221f160ebffe91b78a112daa59d535ddceb783a002f0e901d0`  
		Last Modified: Tue, 25 Aug 2026 08:08:30 GMT  
		Size: 20.3 MB (20348407 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:d9190da413b9ec2584faf7bf28db22c5d0f338beca5b22df614611b2a5ee0a7c`  
		Last Modified: Tue, 25 Aug 2026 08:08:29 GMT  
		Size: 4.5 MB (4515212 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-11-lein-2.13.0-bookworm` - unknown; unknown

```console
$ docker pull clojure@sha256:bf26637fff7d8f1da8d22139d352316ca6b53f59142b047d84b0442a74880278
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **4.3 MB (4325808 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d1b0a4720d3b97abd38616f1233d44304fbe91c4cb7280fc470a4e5619026d08`

```dockerfile
```

-	Layers:
	-	`sha256:14c12c262ec1eb200f038694a54564fcfe2613583ae28458f7ffe28b56b48acd`  
		Last Modified: Tue, 25 Aug 2026 08:08:30 GMT  
		Size: 4.3 MB (4310017 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:d0e8a2e134fe7124daae0797a7822767e2b6ff5fbc6f8c21f3c01c67671719a4`  
		Last Modified: Tue, 25 Aug 2026 08:08:29 GMT  
		Size: 15.8 KB (15791 bytes)  
		MIME: application/vnd.in-toto+json
