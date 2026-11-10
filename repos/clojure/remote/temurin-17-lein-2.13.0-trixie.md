## `clojure:temurin-17-lein-2.13.0-trixie`

```console
$ docker pull clojure@sha256:f54df32cdf861e560f77881f190b2ef65e826b6ff2e9aaa544713fc26bae9a25
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; ppc64le
	-	unknown; unknown

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; amd64

```console
$ docker pull clojure@sha256:7fbeb4642e6e0a5c9db1bae68c36f389f25e8575c1a1f9e2ad316fc38ab9748f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.9 MB (218899770 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:c8dc8fec3272260ecfb1f1eb25473d9b6aa746b478bd2feedac47b3c9c529c1a`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'amd64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:38:10 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:38:10 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:38:10 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:38:10 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:38:10 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:38:10 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:39:24 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:39:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:39:24 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:39:25 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:39:25 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:39:25 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:39:25 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:a6dd1c05fbba4f9028078a11f143cbb625d2408921eb8207bfa1dd1ad301276f`  
		Last Modified: Thu, 05 Nov 2026 06:16:21 GMT  
		Size: 49.4 MB (49412508 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7a97d11d9720a0b4474f277585ca150ee87e2515e581d9bd1026da6510af9183`  
		Last Modified: Tue, 10 Nov 2026 00:39:45 GMT  
		Size: 146.1 MB (146086171 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1636bfdb0a7a2f01ce72281d63bdbe74a562e07e9bcaf9597deb4bf2970dfd33`  
		Last Modified: Tue, 10 Nov 2026 00:39:42 GMT  
		Size: 18.9 MB (18884986 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:52107cabf4e47c96430602907d1e5efba084b05efd6a20334d98f858736abe77`  
		Last Modified: Tue, 10 Nov 2026 00:39:42 GMT  
		Size: 4.5 MB (4515174 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:a06ca6f5d8b4cf261b68850216a761aebd1275736a1a209d984876fa75b56330`  
		Last Modified: Tue, 10 Nov 2026 00:39:42 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:f0d1dc28e008fe5a66595ee300dccef46321329cdb1e24c8135b94977ece6a8f
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3844180 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f7170e953470ba6e4a0abc9c81b6742068a2534e147e38add766c5c73e0b695e`

```dockerfile
```

-	Layers:
	-	`sha256:000f7f187834ee2b1e08a58fee10089044f8325ef0017d067dd2e46dd97a94ff`  
		Last Modified: Tue, 10 Nov 2026 00:39:42 GMT  
		Size: 3.8 MB (3826462 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:a4bd716d36e8960430fdea6eecaca41c74c424eb3564bc0b75a0a7a41e3a9ff6`  
		Last Modified: Tue, 10 Nov 2026 00:39:41 GMT  
		Size: 17.7 KB (17718 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; arm64 variant v8

```console
$ docker pull clojure@sha256:4cae205e0c4e41b5bebc37ec720ef759c710800a3cc943e25602b31834dd5146
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **218.1 MB (218094744 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:74400537fa1b320dc72c19cba67290d4a1aaa2d6f351aa20d05cbe7ac9649352`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'arm64' out/ 'trixie' '@1793827419'
# Tue, 10 Nov 2026 00:37:25 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Tue, 10 Nov 2026 00:37:25 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Tue, 10 Nov 2026 00:37:25 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Tue, 10 Nov 2026 00:37:25 GMT
ENV LEIN_VERSION=2.13.0
# Tue, 10 Nov 2026 00:37:25 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Tue, 10 Nov 2026 00:37:25 GMT
WORKDIR /tmp
# Tue, 10 Nov 2026 00:38:42 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Tue, 10 Nov 2026 00:38:42 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Tue, 10 Nov 2026 00:38:42 GMT
ENV LEIN_ROOT=1
# Tue, 10 Nov 2026 00:38:43 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 00:38:43 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 00:38:43 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 00:38:43 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:23b69c48ce5c2a6fb0681d959fa700427ad2a7cf7e6be5d25249170a1853d7ad`  
		Last Modified: Thu, 05 Nov 2026 06:16:05 GMT  
		Size: 49.8 MB (49778604 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:fc8837f76d45cb1d2938c2f1d1ee2e32f03e08a50e69231a0e77c98564fe3e52`  
		Last Modified: Tue, 10 Nov 2026 00:39:04 GMT  
		Size: 145.0 MB (144957167 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:18721f8376ec32a9038fb779ddd86b89a609069676c6effa1ad2724b78c22838`  
		Last Modified: Tue, 10 Nov 2026 00:39:01 GMT  
		Size: 18.8 MB (18842862 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7517dee852b78dfe5517b7dfea38c5cba6e2801003b590d673b98c99ad7a8115`  
		Last Modified: Tue, 10 Nov 2026 00:39:01 GMT  
		Size: 4.5 MB (4515180 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:59864ade923c58abe79bc2faf5fc756c621252a522bd579540eb19bc9e3a94b2`  
		Last Modified: Tue, 10 Nov 2026 00:39:01 GMT  
		Size: 899.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:9b33b2d7a37e1ee6f2487a78adfc5548a780e87c99fee8fd5906402b487e6d21
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3844541 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:159a67f843022f4873fea9a1bfac41e3a2bffcb567e713fe58a5cc0bd626c810`

```dockerfile
```

-	Layers:
	-	`sha256:738581aa1b39f4b9895fbdad7fe1d9240cd11cdcbb200d4b07049f99c08c6fe3`  
		Last Modified: Tue, 10 Nov 2026 00:39:01 GMT  
		Size: 3.8 MB (3826702 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:2b0068751e0869de028cfdf6934a9f187aaef5cfe023fbbab0d8ad232a576bbf`  
		Last Modified: Tue, 10 Nov 2026 00:39:01 GMT  
		Size: 17.8 KB (17839 bytes)  
		MIME: application/vnd.in-toto+json

### `clojure:temurin-17-lein-2.13.0-trixie` - linux; ppc64le

```console
$ docker pull clojure@sha256:47ffb0fc70fb1a314055daec9d364051323f764810bef84babe563ef0350ebc6
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **221.5 MB (221541400 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:1ea4bc3a55d4485be3ba707c6080e203c0c2ca93782ae74bf2bfa295b265b542`
-	Entrypoint: `["entrypoint"]`
-	Default Command: `["repl"]`

```dockerfile
# Wed, 04 Nov 2026 21:23:39 GMT
RUN # debian.sh --arch 'ppc64el' out/ 'trixie' '@1793827419'
# Thu, 05 Nov 2026 15:45:24 GMT
ENV JAVA_HOME=/opt/java/openjdk
# Thu, 05 Nov 2026 15:45:24 GMT
COPY /opt/java/openjdk /opt/java/openjdk # buildkit
# Thu, 05 Nov 2026 15:45:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 05 Nov 2026 15:45:24 GMT
ENV LEIN_VERSION=2.13.0
# Thu, 05 Nov 2026 15:45:24 GMT
ENV LEIN_INSTALL=/usr/local/bin/
# Thu, 05 Nov 2026 15:45:26 GMT
WORKDIR /tmp
# Thu, 05 Nov 2026 16:31:24 GMT
RUN set -eux; apt-get update && apt-get install -y make maven git gnupg && rm -rf /var/lib/apt/lists/* && export GNUPGHOME="$(mktemp -d)" && export LEIN_ROOT=1 && mkdir -p $LEIN_INSTALL /usr/share/java /root/.lein && gpg --batch --keyserver hkps://keyserver.ubuntu.com --recv-keys 9D13D9426A0814B3373CF5E3D8A8243577A7859F && git clone --depth 1 --branch $LEIN_VERSION https://codeberg.org/leiningen/leiningen.git && cd leiningen && git verify-tag $LEIN_VERSION && [ "$(git rev-parse HEAD)" = "d703e4802feb3e5c3fa9ae9f1874fb7a3a3e3030" ] && ( cd leiningen-core && mvn -B -q -DskipTests install && mvn -B -q dependency:build-classpath -Dmdep.outputFile=.lein-bootstrap ) && bin/lein uberjar && install -m 0644 target/leiningen-$LEIN_VERSION-standalone.jar /usr/share/java/leiningen-$LEIN_VERSION-standalone.jar && install -m 0755 bin/lein-pkg $LEIN_INSTALL/lein && gpgconf --kill all && cd /tmp && rm -rf /tmp/leiningen /root/.m2 "$GNUPGHOME" && apt-get purge -y --auto-remove maven git gnupg # buildkit
# Thu, 05 Nov 2026 16:31:24 GMT
ENV PATH=/opt/java/openjdk/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/local/bin/
# Thu, 05 Nov 2026 16:31:24 GMT
ENV LEIN_ROOT=1
# Thu, 05 Nov 2026 16:31:28 GMT
RUN echo '(defproject dummy "" :dependencies [[org.clojure/clojure "1.12.5"]])' > project.clj   && lein deps && rm project.clj # buildkit
# Tue, 10 Nov 2026 02:30:32 GMT
COPY entrypoint /usr/local/bin/entrypoint # buildkit
# Tue, 10 Nov 2026 02:30:32 GMT
ENTRYPOINT ["entrypoint"]
# Tue, 10 Nov 2026 02:30:32 GMT
CMD ["repl"]
```

-	Layers:
	-	`sha256:9acf5fc430af42e0444193402206b9d2b5c2c4692602efa65ff7c784c52790c2`  
		Last Modified: Thu, 05 Nov 2026 06:18:00 GMT  
		Size: 53.2 MB (53225589 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:6ee03120020298d10b2a58fd447fa0b14563aea18a134ae0bb4b68b9840afc7f`  
		Last Modified: Thu, 05 Nov 2026 15:47:23 GMT  
		Size: 144.9 MB (144860486 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:4f4fb700ef54461cfa02571ae0db9a0dc1e0cdb5577484a6d75e68dc38e8acc1`  
		Last Modified: Tue, 07 Mar 2017 15:01:14 GMT  
		Size: 32.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f88c193e17414aa7724e43cc43c3af06f224705dd486260f3b0282b6da0d4d78`  
		Last Modified: Thu, 05 Nov 2026 16:31:52 GMT  
		Size: 18.9 MB (18939203 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:affbcf32807e51f42d4b003fe1513b1283c3145c2eb5bec3becc292238c6bb40`  
		Last Modified: Thu, 05 Nov 2026 16:31:52 GMT  
		Size: 4.5 MB (4515192 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:0cc15d4b4934210d003393337a6f334c745cf81e8fb22df59ff734f05a1a34de`  
		Last Modified: Tue, 10 Nov 2026 02:31:09 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `clojure:temurin-17-lein-2.13.0-trixie` - unknown; unknown

```console
$ docker pull clojure@sha256:8af94bb6d54c1aa937014e6860b1115b922f0e3e91da120aabf4f739e9c25ed1
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **3.8 MB (3843021 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:b92421d0886de9a26d09c6312f855f6ff3e38ffddc7d0c5564f1787844f10f70`

```dockerfile
```

-	Layers:
	-	`sha256:e473d20e93faca4b03f358a9d706e7d990ba5345341404fb710e72753541da44`  
		Last Modified: Tue, 10 Nov 2026 02:31:09 GMT  
		Size: 3.8 MB (3826214 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:c7586376379d16db4aaec17312e0a627dbbcc1a49704c73915879e8632616d5a`  
		Last Modified: Tue, 10 Nov 2026 02:31:09 GMT  
		Size: 16.8 KB (16807 bytes)  
		MIME: application/vnd.in-toto+json
