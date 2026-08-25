## `clojure:latest`

```console
$ docker pull clojure@sha256:bf843427cd35f6dd469adb39e1e7314409421387c0a319953f70e6e877d7687e
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

### `clojure:latest` - linux; amd64

```console
$ docker pull clojure@sha256:4ff802eab14392d2ffed2e342603e2ca579e591f428df6d4eb8d43c8191af2c7
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **234.0 MB (233970064 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2b85827a01dc8ba7557787a19d0d9625e9ce796b9df690cc3d09cfa334bfde82`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'amd64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:24:15 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:24:15 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:24:15 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:24:15 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:24:15 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:24:15 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:25:33 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:25:33 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:25:33 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:25:35 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:25:35 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:25:35 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:25:48 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:25:48 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:25:48 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:25:48 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:25:48 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:abf56b2f87242de589f03ea56779358079c07c4c099bd1e454d083538eb6666d`  
		Last Modified: Mon, 24 Aug 2026 23:20:07 GMT  
		Size: 48.5 MB (48497362 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:71b7834a2665d3bb96529b8dbe27f910d0a9b3db0d306980acecc2a15b741c8f`  
		Last Modified: Tue, 25 Aug 2026 01:26:12 GMT  
		Size: 92.6 MB (92615119 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:44e2730747a90320d152c5243b1ea19d22d5c02e81814af963b637983f1176c4`  
		Last Modified: Tue, 25 Aug 2026 01:26:09 GMT  
		Size: 20.1 MB (20123915 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:013ba8be78071184249afad784a39fe69091e2163716701f228ecb41508567e2`  
		Last Modified: Tue, 25 Aug 2026 01:26:08 GMT  
		Size: 4.5 MB (4515221 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:afd67cc2f699f9bd976b19eac9b6252e9ecc0ae4ae47b96daa56f9fb094e93c4`  
		Last Modified: Tue, 25 Aug 2026 01:26:11 GMT  
		Size: 68.2 MB (68217371 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:145e8f16df739a6f3f70e52329796de5a3fd9793fb41d0c26265e73f18dc7a6f`  
		Last Modified: Tue, 25 Aug 2026 01:26:10 GMT  
		Size: 614.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:38786c512201a1a9e5ba49683a81959b6466c83be8a9fdf8cccd944f3d39a833`  
		Last Modified: Tue, 25 Aug 2026 01:26:11 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:73096b7cede5b92f7ceaebcc06141ef8a18155585a78a174d7e5522a0816f3c8
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7466125 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:383e39145f44f9be16d19492a14885286ca137dbbcb2f69c36e2fc4a9b7bfc08`

```dockerfile
```

-	Layers:
	-	`sha256:993cfaad144ce93c210945caeee3cab21d1847c2bbe29423c7237524e7c1e111`  
		Last Modified: Tue, 25 Aug 2026 01:26:08 GMT  
		Size: 7.4 MB (7441150 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c4cc07b36caf2865a9de259dd563a1eb4e20bd8c61a4d34cd45dcf6c972d2a67`  
		Last Modified: Tue, 25 Aug 2026 01:26:08 GMT  
		Size: 25.0 KB (24975 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:2caa5ae6a4049a6ffde253c24a6b3fd2405b25de70c7cfff9773ae7fd98e64af
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **232.8 MB (232757149 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:4a914c850fbc1efbe465064d8369c9f49f66268f8b98c061f31edca728627708`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'arm64' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 01:28:13 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 01:28:13 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 01:28:13 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 01:28:13 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 01:28:13 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 01:28:13 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:29:23 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 01:29:23 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 01:29:23 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 01:29:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 01:29:25 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 01:29:25 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 01:29:38 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 01:29:38 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 01:29:38 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 01:29:38 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 01:29:38 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:db86109db3a878cad2671ab822c9b43afbab6a5e1a67658d760dc0b15e7b75d5`  
		Last Modified: Mon, 24 Aug 2026 23:19:58 GMT  
		Size: 48.4 MB (48383649 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:c3105941f713831df2c4c60f245117c1b541db1390e4182093700f28570dbe4d`  
		Last Modified: Tue, 25 Aug 2026 01:30:01 GMT  
		Size: 91.5 MB (91532208 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4cd37722fc37aed868e80ebac232a5a15e9d5b1d879a5cfd0fcfe58f32514911`  
		Last Modified: Tue, 25 Aug 2026 01:29:59 GMT  
		Size: 20.0 MB (19955766 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ea0800b58b4b8557ab2a3b2349be2aee2850a9da8b0cdfee396ee04e8a751c3e`  
		Last Modified: Tue, 25 Aug 2026 01:29:58 GMT  
		Size: 4.5 MB (4515195 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6b86db0693a739ef9d0cbb257e9decf60738a77afdcd8f079e8b233f765f3d7d`  
		Last Modified: Tue, 25 Aug 2026 01:30:01 GMT  
		Size: 68.4 MB (68369253 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:227b9ff2aaf4dd89d9833060cd1d5b05c4de31384b90ccb9a3ad4912c381b3b1`  
		Last Modified: Tue, 25 Aug 2026 01:29:59 GMT  
		Size: 616.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:24901250f36a367c1b3c7cd65aa0bde2803d07f3a25481bcaf418c83c7089c0d`  
		Last Modified: Tue, 25 Aug 2026 01:30:00 GMT  
		Size: 398.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:827b21211325c56b7b8fa38f5d3d10e4b3bf371b524a8f4a1a6dc6ef7475089f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7471985 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:3883b729a2b4263d24da690acc4110ffd13d150d3874ed8f2def798be233dc72`

```dockerfile
```

-	Layers:
	-	`sha256:aee584a09cf6513f87d55d19aebf3a3513379e73929096b5ceccc8611f7d0f80`  
		Last Modified: Tue, 25 Aug 2026 01:29:58 GMT  
		Size: 7.4 MB (7446886 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:828973449ab52c190ce44e362be98fe4caefac99d296cd6d6f7a7f6e149a52c7`  
		Last Modified: Tue, 25 Aug 2026 01:29:58 GMT  
		Size: 25.1 KB (25099 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; ppc64le

```console
$ docker pull clojure@sha256:974f712c4e5a2092ba5641ca1ff8d0f982cbf9877da0e5b1ccb8548b54263c18
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **242.3 MB (242280758 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:6f7f53444c136d56b169b17b9ecebc5ad1b4f1eacecdf58afc563a48f2e5879a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 24 Aug 2026 00:00:00 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'bookworm' '@1787529600'
# Tue, 25 Aug 2026 08:00:14 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 25 Aug 2026 08:00:14 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 25 Aug 2026 08:00:14 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 25 Aug 2026 08:00:14 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 25 Aug 2026 08:00:14 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 25 Aug 2026 08:00:14 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:03:25 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 25 Aug 2026 08:03:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 25 Aug 2026 08:03:25 GMT
ENV LEIN_ROOT=1
# Tue, 25 Aug 2026 08:03:30 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 25 Aug 2026 08:03:30 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 25 Aug 2026 08:03:30 GMT
WORKDIR /tmp
# Tue, 25 Aug 2026 08:04:01 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 25 Aug 2026 08:04:01 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 25 Aug 2026 08:04:01 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 25 Aug 2026 08:04:01 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 25 Aug 2026 08:04:01 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:4cd70023d17c961e89077d0123ff0b5246b3abdec0a67aadfaabca3e61d0f713`  
		Last Modified: Mon, 24 Aug 2026 23:19:17 GMT  
		Size: 52.3 MB (52341764 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b894d0906125fd3bcf84478d415df35dbf1fc3f2188a4c32d6aa52dc8e80f546`  
		Last Modified: Tue, 25 Aug 2026 08:04:48 GMT  
		Size: 91.3 MB (91255831 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:319742a3a6fa19f741e09b2f1135f56769d942589c62a7782281b0cbf3c38ea8`  
		Last Modified: Tue, 25 Aug 2026 08:04:45 GMT  
		Size: 20.3 MB (20348132 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8b4bad6f5d8b0d7cec8899da1603dce471fa328f1fcd99aab4392ba50fe2b3ff`  
		Last Modified: Tue, 25 Aug 2026 08:04:44 GMT  
		Size: 4.5 MB (4515264 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:ed66cdf314bf0680e43e15b2d926da3577e8de8da27185afb7d4eceda3c802e1`  
		Last Modified: Tue, 25 Aug 2026 08:04:48 GMT  
		Size: 73.8 MB (73818689 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1770756d1be8708c48fc729debab1bbb38de232d184d681bcd490e2ce5676925`  
		Last Modified: Tue, 25 Aug 2026 08:04:45 GMT  
		Size: 615.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f780af462e63c44765da57d4dbfac1ec5e770853f49ac25ead80bd1949b71ce7`  
		Last Modified: Tue, 25 Aug 2026 08:04:47 GMT  
		Size: 399.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:77f1c6be9be1613a3bcbc88d7f257f5fbd60bab9b5ac56e4d5aa3e945f714602
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.5 MB (7454680 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:72ea92019194d8ebd0a1b71ec11c449e05b48534335b97d066b6a359e9315b68`

```dockerfile
```

-	Layers:
	-	`sha256:bf8e9828b28541c8c48160eda4f322bf1d914ed4f67a0d6881d9504bf3707bf4`  
		Last Modified: Tue, 25 Aug 2026 08:04:44 GMT  
		Size: 7.4 MB (7429666 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:5133f40c21d134031b89622ff9642d5f9729b05d76be99e127e52f3cb16bc8ed`  
		Last Modified: Tue, 25 Aug 2026 08:04:43 GMT  
		Size: 25.0 KB (25014 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:latest` - linux; s390x

```console
$ docker pull clojure@sha256:7f1f3854508cc39a55d4f1a714c6fee9ed93f9509be7dc09ff8cb8ebcd3e029c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **227.2 MB (227212703 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c03b09c3aad5cf5d79ed75b45d17481a4220d6ae2e87ad05e6fd97af4c73dd48`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["-M","--repl"]`

```dockerfile
# Mon, 13 Jul 2026 00:00:00 GMT
RUN # debian.sh --arch 's390x' out/ 'bookworm' '@1783900800'
# Tue, 04 Aug 2026 02:47:07 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 04 Aug 2026 02:47:07 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 04 Aug 2026 02:47:07 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 04 Aug 2026 02:47:07 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 04 Aug 2026 02:47:07 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 04 Aug 2026 02:47:07 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:48:26 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 04 Aug 2026 02:48:26 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 04 Aug 2026 02:48:26 GMT
ENV LEIN_ROOT=1
# Tue, 04 Aug 2026 02:48:29 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 04 Aug 2026 02:48:29 GMT
ENV CLOJURE_VERSION=1.12.5.1664
# Tue, 04 Aug 2026 02:48:29 GMT
WORKDIR /tmp
# Tue, 04 Aug 2026 02:48:41 GMT
RUN apt-get update && apt-get install -y curl make git rlwrap && rm -rf /var/lib/apt/lists/* && curl -fsSLO https://download.clojure.org/install/linux-install-$CLOJURE_VERSION.sh && sha256sum linux-install-$CLOJURE_VERSION.sh && echo "fb2f0ce23373d64bb4f13fce2ce2924c54ee0c033755357900808a1250621d82 *linux-install-$CLOJURE_VERSION.sh" | sha256sum -c - && chmod +x linux-install-$CLOJURE_VERSION.sh && ./linux-install-$CLOJURE_VERSION.sh && rm linux-install-$CLOJURE_VERSION.sh && clojure -e "(clojure-version)" && apt-get purge -y --auto-remove curl # buildkit
# Tue, 04 Aug 2026 02:48:41 GMT
COPY rlwrap.retry /usr/local/bin/rlwrap # buildkit
# Tue, 04 Aug 2026 02:48:41 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 04 Aug 2026 02:48:41 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 04 Aug 2026 02:48:41 GMT
CMD ["-M" "--repl"]
```

-	Layers:
	-	`sha256:20ea3b67db3ab9b79a4dc8b59ccefeec0dd58934671f4b22a93d9364bb839f4a`  
		Last Modified: Tue, 14 Jul 2026 00:14:20 GMT  
		Size: 47.2 MB (47157279 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a7a0cad5f0aac8adc2e030a150bc1d40f4c14ef4024c1a7c7db6e4dcf13475c`  
		Last Modified: Tue, 04 Aug 2026 02:49:11 GMT  
		Size: 88.4 MB (88420383 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f653c08d1f121e25934a6cd35fbd3c1565dc6048609c5d85c97a511610dc4fcd`  
		Last Modified: Tue, 04 Aug 2026 02:49:09 GMT  
		Size: 19.8 MB (19770403 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3f2ce953b25928ff4efc001284416f5bb7c5c4cb790449606e1b1ea86239b21f`  
		Last Modified: Tue, 04 Aug 2026 02:49:09 GMT  
		Size: 4.5 MB (4515224 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:5a98249af6d751aa9b4f40af8dfd27a5c27c8eba5f359b7593ebe4efea4cefa5`  
		Last Modified: Tue, 04 Aug 2026 02:49:11 GMT  
		Size: 67.3 MB (67348342 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:b112d49c049852f18ec6c1f003ad416ccd71e27f1d56b8cd751265f9f0a575a8`  
		Last Modified: Tue, 04 Aug 2026 02:49:10 GMT  
		Size: 611.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:425bfac99dca23d8cd84057e2e2a6283e1135d674bdf8236c932fdc6e1d52da7`  
		Last Modified: Tue, 04 Aug 2026 02:49:11 GMT  
		Size: 397.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:latest` - unknown; unknown

```console
$ docker pull clojure@sha256:fe012b44458cdffb9afd55904e2be9f684247abfa8af72038fa774b9b370490f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **7.4 MB (7436802 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f55284b4fa93bab8f7e32fb2e23decc03b3611b191b2e0827f708978fb2f5ead`

```dockerfile
```

-	Layers:
	-	`sha256:b6617046fd05bd224c1116b527da4861cac7dabc52b838a37cbe2e8c2fea30d9`  
		Last Modified: Tue, 04 Aug 2026 02:49:09 GMT  
		Size: 7.4 MB (7411828 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:dec46939a32dfd9e4e272f21c699b6bd7da8046b9cde8de6b01418aa85e7dd62`  
		Last Modified: Tue, 04 Aug 2026 02:49:09 GMT  
		Size: 25.0 KB (24974 bytes)  
		MIME: application/vnd.in-toto+json
