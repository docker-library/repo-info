<!-- THIS FILE IS GENERATED VIA './update-remote.sh' -->

# Tags of `api-firewall`

-	[`api-firewall:0.9.6`](#api-firewall096)
-	[`api-firewall:latest`](#api-firewalllatest)

## `api-firewall:0.9.6`

```console
$ docker pull api-firewall@sha256:57d4726bb2b02b6fe8eb8082bf9c3f6ce460cca18fa1854e78a0ef5684c13ca7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `api-firewall:0.9.6` - linux; amd64

```console
$ docker pull api-firewall@sha256:9d8609118bfddfaf0fc86412ce5d0c6eb6dacd12143624f852c94d3be24d480d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18476823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5836d145eaa6cd5d3ab7634f27c6ea2b4486f9535e070ed79027c12315e08299`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["api-firewall"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:44:18 GMT
ENV APIFW_PATH=/opt/api-firewall
# Mon, 22 Jun 2026 19:44:18 GMT
ENV PATH=/opt/api-firewall:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 22 Jun 2026 19:44:18 GMT
RUN set -eux;     adduser -u 1000 -H -h /opt -D -s /bin/sh api-firewall # buildkit
# Mon, 22 Jun 2026 19:44:18 GMT
ENV APIFIREWALL_VERSION=v0.9.6
# Mon, 22 Jun 2026 19:44:19 GMT
RUN set -eux;         apk add --no-cache wget;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-amd64-musl.tar.gz";             sha256='c533716f7dd3db86a8b70879b83fe14292c8f5b9d3974daf20272317ac6e9ffc';             ;;         'aarch64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-arm64-musl.tar.gz";             sha256='274579a052a5ff966430ab279f5990a83839492817433f2ae5860abc0f4f7a5f';             ;;         'x86')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-386-musl.tar.gz";             sha256='14ba27c545db203673269e02cf8c02edb06eddd71d6910f44e417a13a3ac664b';             ;;         *)             echo >&2 "error: current architecture ($arch) does not have a corresponding API-Firewall binary release";             exit 1;             ;;     esac;         wget -O api-firewall.tar.gz "$url";     echo "$sha256 *api-firewall.tar.gz" | sha256sum -c;         mkdir -p "$APIFW_PATH";     tar -xzf api-firewall.tar.gz -C "$APIFW_PATH" --strip-components 1;     rm api-firewall.tar.gz;         chmod 755 $APIFW_PATH/api-firewall;         api-firewall -v # buildkit
# Mon, 22 Jun 2026 19:44:19 GMT
COPY docker-entrypoint.sh /opt/api-firewall/ # buildkit
# Mon, 22 Jun 2026 19:44:19 GMT
USER api-firewall
# Mon, 22 Jun 2026 19:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:44:19 GMT
CMD ["api-firewall"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43febc74139a4d0af31c22f4fd974a7051b3766688afa0a84a4c736872905e00`  
		Last Modified: Mon, 22 Jun 2026 19:44:25 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983a8289dd15f929cde9215d3fd48b1cc9cc8591dba3941c95ddb18f8ee11cc5`  
		Last Modified: Mon, 22 Jun 2026 19:44:26 GMT  
		Size: 14.6 MB (14631153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6a6503b3f1bd5e082ec72dd221abf73bba53b134e3e9f4a7562d342125d6889`  
		Last Modified: Mon, 22 Jun 2026 19:44:25 GMT  
		Size: 351.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `api-firewall:0.9.6` - unknown; unknown

```console
$ docker pull api-firewall@sha256:cd6b0832dbbd24d1a48ea32957602ae92a07b7ff6ff82cc41dfa607613747b45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 KB (184145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52354f4c4f717b580b66a2f34542c4f2a81ab3143c2d1c11fe2f03a6e4108e93`

```dockerfile
```

-	Layers:
	-	`sha256:6407c3545411a5f98f5aaaff3b3cc2e9420a9e975526a247d2deb5074f331170`  
		Last Modified: Mon, 22 Jun 2026 19:44:25 GMT  
		Size: 170.6 KB (170642 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db9571608ae11030509760e902c621f24a65e2afc3ff7bdebd1707b6cf738be4`  
		Last Modified: Mon, 22 Jun 2026 19:44:25 GMT  
		Size: 13.5 KB (13503 bytes)  
		MIME: application/vnd.in-toto+json

### `api-firewall:0.9.6` - linux; arm64 variant v8

```console
$ docker pull api-firewall@sha256:49fa4368c61d506f2f051ca9ecc48ab3fcce8d3e83e212da1402c97bd1206fd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17502896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d524177294d3c1b8434dcdff4e8c8969977be75a00ffa8a6b0fb6dd15cb482b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["api-firewall"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:13:23 GMT
ENV APIFW_PATH=/opt/api-firewall
# Thu, 17 Sep 2026 21:13:23 GMT
ENV PATH=/opt/api-firewall:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:13:23 GMT
RUN set -eux;     adduser -u 1000 -H -h /opt -D -s /bin/sh api-firewall # buildkit
# Thu, 17 Sep 2026 21:13:23 GMT
ENV APIFIREWALL_VERSION=v0.9.6
# Thu, 17 Sep 2026 21:13:24 GMT
RUN set -eux;         apk add --no-cache wget;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-amd64-musl.tar.gz";             sha256='c533716f7dd3db86a8b70879b83fe14292c8f5b9d3974daf20272317ac6e9ffc';             ;;         'aarch64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-arm64-musl.tar.gz";             sha256='274579a052a5ff966430ab279f5990a83839492817433f2ae5860abc0f4f7a5f';             ;;         'x86')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-386-musl.tar.gz";             sha256='14ba27c545db203673269e02cf8c02edb06eddd71d6910f44e417a13a3ac664b';             ;;         *)             echo >&2 "error: current architecture ($arch) does not have a corresponding API-Firewall binary release";             exit 1;             ;;     esac;         wget -O api-firewall.tar.gz "$url";     echo "$sha256 *api-firewall.tar.gz" | sha256sum -c;         mkdir -p "$APIFW_PATH";     tar -xzf api-firewall.tar.gz -C "$APIFW_PATH" --strip-components 1;     rm api-firewall.tar.gz;         chmod 755 $APIFW_PATH/api-firewall;         api-firewall -v # buildkit
# Thu, 17 Sep 2026 21:13:24 GMT
COPY docker-entrypoint.sh /opt/api-firewall/ # buildkit
# Thu, 17 Sep 2026 21:13:24 GMT
USER api-firewall
# Thu, 17 Sep 2026 21:13:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:13:24 GMT
CMD ["api-firewall"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e54c362681a82515c8ddef6bf58d5e91cadadc13a7119c7a8116ef785a0b3f6`  
		Last Modified: Thu, 17 Sep 2026 21:13:30 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c8c3172bc5f7c17f72597942abbe99ddba866b4099a0e133668167567a142b4`  
		Last Modified: Thu, 17 Sep 2026 21:13:31 GMT  
		Size: 13.3 MB (13315591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ea1dab70612827098041aa083d1cfac2627af7cde6453e0f5d0b7cc92a025b1`  
		Last Modified: Thu, 17 Sep 2026 21:13:31 GMT  
		Size: 351.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `api-firewall:0.9.6` - unknown; unknown

```console
$ docker pull api-firewall@sha256:100fb9d27004b72239e5f93788f7b66202600227626d6c6d13746cb33483316c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.6 KB (183622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f60c5fd09bbd7dd3345a1f771e17b842283101736bf0bbc3650aee49c91a2422`

```dockerfile
```

-	Layers:
	-	`sha256:f0eeb3a49a7a97f36d37f2e8cfe903250178c8a6c1de60d54e6d7ff20a7022a4`  
		Last Modified: Thu, 17 Sep 2026 21:13:31 GMT  
		Size: 170.0 KB (170024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ae9423f1ddb1a1c7278ef7ab1fec7237732332d6d0c1b22eaaa220cfce26493`  
		Last Modified: Thu, 17 Sep 2026 21:13:31 GMT  
		Size: 13.6 KB (13598 bytes)  
		MIME: application/vnd.in-toto+json

### `api-firewall:0.9.6` - linux; 386

```console
$ docker pull api-firewall@sha256:6df1b39cb2b2a9ee0caf8ea6479d9c5eefbd59e005cac51a1b400067fb16f60a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16695229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2829edcb011e613ab2b3d7d55b414e89ee4302be6f7737fc1235aa35a6bbfbbf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["api-firewall"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:44:30 GMT
ENV APIFW_PATH=/opt/api-firewall
# Mon, 22 Jun 2026 19:44:30 GMT
ENV PATH=/opt/api-firewall:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 22 Jun 2026 19:44:30 GMT
RUN set -eux;     adduser -u 1000 -H -h /opt -D -s /bin/sh api-firewall # buildkit
# Mon, 22 Jun 2026 19:44:30 GMT
ENV APIFIREWALL_VERSION=v0.9.6
# Mon, 22 Jun 2026 19:44:34 GMT
RUN set -eux;         apk add --no-cache wget;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-amd64-musl.tar.gz";             sha256='c533716f7dd3db86a8b70879b83fe14292c8f5b9d3974daf20272317ac6e9ffc';             ;;         'aarch64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-arm64-musl.tar.gz";             sha256='274579a052a5ff966430ab279f5990a83839492817433f2ae5860abc0f4f7a5f';             ;;         'x86')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-386-musl.tar.gz";             sha256='14ba27c545db203673269e02cf8c02edb06eddd71d6910f44e417a13a3ac664b';             ;;         *)             echo >&2 "error: current architecture ($arch) does not have a corresponding API-Firewall binary release";             exit 1;             ;;     esac;         wget -O api-firewall.tar.gz "$url";     echo "$sha256 *api-firewall.tar.gz" | sha256sum -c;         mkdir -p "$APIFW_PATH";     tar -xzf api-firewall.tar.gz -C "$APIFW_PATH" --strip-components 1;     rm api-firewall.tar.gz;         chmod 755 $APIFW_PATH/api-firewall;         api-firewall -v # buildkit
# Mon, 22 Jun 2026 19:44:34 GMT
COPY docker-entrypoint.sh /opt/api-firewall/ # buildkit
# Mon, 22 Jun 2026 19:44:34 GMT
USER api-firewall
# Mon, 22 Jun 2026 19:44:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:44:34 GMT
CMD ["api-firewall"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d954279a7eec82c86e0be436ba4a5db4719e7039f820665f38714fa110906ed`  
		Last Modified: Mon, 22 Jun 2026 19:44:40 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d2444ffc1ff173ceaac8235a89778d9a6779cbc7c3e33cc965bdc96c3f7fea`  
		Last Modified: Mon, 22 Jun 2026 19:44:41 GMT  
		Size: 13.0 MB (13025993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:375b621ab0f7928bebc532f6886e8c3524beb06bb54b339f84e0b1df17023c3d`  
		Last Modified: Mon, 22 Jun 2026 19:44:40 GMT  
		Size: 351.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `api-firewall:0.9.6` - unknown; unknown

```console
$ docker pull api-firewall@sha256:9f39d286b60ea7ae2e20a689199cee3a7d8a4831f0bc06b5feab0f59707ee3b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 KB (184104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd3c4ff96bbfd71fcb83a730bed601ca601eaba0a9dbbdcf9e9770af0a37c101`

```dockerfile
```

-	Layers:
	-	`sha256:08a6ea49b7ea1956dfdaa4e4201b50f37d16098fc4e0e4bdf328f3fce2a3bc9d`  
		Last Modified: Mon, 22 Jun 2026 19:44:40 GMT  
		Size: 170.6 KB (170627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86d430d01f1dc4701eb82aa8865d0a072951f743042081349a19fa6e3defb78d`  
		Last Modified: Mon, 22 Jun 2026 19:44:40 GMT  
		Size: 13.5 KB (13477 bytes)  
		MIME: application/vnd.in-toto+json

## `api-firewall:latest`

```console
$ docker pull api-firewall@sha256:57d4726bb2b02b6fe8eb8082bf9c3f6ce460cca18fa1854e78a0ef5684c13ca7
```

-	Manifest MIME: `application/vnd.oci.image.index.v1+json`
-	Platforms: 6
	-	linux; amd64
	-	unknown; unknown
	-	linux; arm64 variant v8
	-	unknown; unknown
	-	linux; 386
	-	unknown; unknown

### `api-firewall:latest` - linux; amd64

```console
$ docker pull api-firewall@sha256:9d8609118bfddfaf0fc86412ce5d0c6eb6dacd12143624f852c94d3be24d480d
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **18.5 MB (18476823 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:5836d145eaa6cd5d3ab7634f27c6ea2b4486f9535e070ed79027c12315e08299`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["api-firewall"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:09 GMT
ADD alpine-minirootfs-3.23.5-x86_64.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:09 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:44:18 GMT
ENV APIFW_PATH=/opt/api-firewall
# Mon, 22 Jun 2026 19:44:18 GMT
ENV PATH=/opt/api-firewall:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 22 Jun 2026 19:44:18 GMT
RUN set -eux;     adduser -u 1000 -H -h /opt -D -s /bin/sh api-firewall # buildkit
# Mon, 22 Jun 2026 19:44:18 GMT
ENV APIFIREWALL_VERSION=v0.9.6
# Mon, 22 Jun 2026 19:44:19 GMT
RUN set -eux;         apk add --no-cache wget;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-amd64-musl.tar.gz";             sha256='c533716f7dd3db86a8b70879b83fe14292c8f5b9d3974daf20272317ac6e9ffc';             ;;         'aarch64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-arm64-musl.tar.gz";             sha256='274579a052a5ff966430ab279f5990a83839492817433f2ae5860abc0f4f7a5f';             ;;         'x86')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-386-musl.tar.gz";             sha256='14ba27c545db203673269e02cf8c02edb06eddd71d6910f44e417a13a3ac664b';             ;;         *)             echo >&2 "error: current architecture ($arch) does not have a corresponding API-Firewall binary release";             exit 1;             ;;     esac;         wget -O api-firewall.tar.gz "$url";     echo "$sha256 *api-firewall.tar.gz" | sha256sum -c;         mkdir -p "$APIFW_PATH";     tar -xzf api-firewall.tar.gz -C "$APIFW_PATH" --strip-components 1;     rm api-firewall.tar.gz;         chmod 755 $APIFW_PATH/api-firewall;         api-firewall -v # buildkit
# Mon, 22 Jun 2026 19:44:19 GMT
COPY docker-entrypoint.sh /opt/api-firewall/ # buildkit
# Mon, 22 Jun 2026 19:44:19 GMT
USER api-firewall
# Mon, 22 Jun 2026 19:44:19 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:44:19 GMT
CMD ["api-firewall"]
```

-	Layers:
	-	`sha256:e6f31ffc071e5560b82a8685fba8214954e5721e3e49269d00958316edbe89fe`  
		Last Modified: Mon, 22 Jun 2026 12:03:33 GMT  
		Size: 3.8 MB (3844421 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:43febc74139a4d0af31c22f4fd974a7051b3766688afa0a84a4c736872905e00`  
		Last Modified: Mon, 22 Jun 2026 19:44:25 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:983a8289dd15f929cde9215d3fd48b1cc9cc8591dba3941c95ddb18f8ee11cc5`  
		Last Modified: Mon, 22 Jun 2026 19:44:26 GMT  
		Size: 14.6 MB (14631153 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:f6a6503b3f1bd5e082ec72dd221abf73bba53b134e3e9f4a7562d342125d6889`  
		Last Modified: Mon, 22 Jun 2026 19:44:25 GMT  
		Size: 351.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `api-firewall:latest` - unknown; unknown

```console
$ docker pull api-firewall@sha256:cd6b0832dbbd24d1a48ea32957602ae92a07b7ff6ff82cc41dfa607613747b45
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 KB (184145 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:52354f4c4f717b580b66a2f34542c4f2a81ab3143c2d1c11fe2f03a6e4108e93`

```dockerfile
```

-	Layers:
	-	`sha256:6407c3545411a5f98f5aaaff3b3cc2e9420a9e975526a247d2deb5074f331170`  
		Last Modified: Mon, 22 Jun 2026 19:44:25 GMT  
		Size: 170.6 KB (170642 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:db9571608ae11030509760e902c621f24a65e2afc3ff7bdebd1707b6cf738be4`  
		Last Modified: Mon, 22 Jun 2026 19:44:25 GMT  
		Size: 13.5 KB (13503 bytes)  
		MIME: application/vnd.in-toto+json

### `api-firewall:latest` - linux; arm64 variant v8

```console
$ docker pull api-firewall@sha256:49fa4368c61d506f2f051ca9ecc48ab3fcce8d3e83e212da1402c97bd1206fd5
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **17.5 MB (17502896 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:d524177294d3c1b8434dcdff4e8c8969977be75a00ffa8a6b0fb6dd15cb482b1`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["api-firewall"]`

```dockerfile
# Thu, 17 Sep 2026 20:37:18 GMT
ADD alpine-minirootfs-3.23.6-aarch64.tar.gz / # buildkit
# Thu, 17 Sep 2026 20:37:18 GMT
CMD ["/bin/sh"]
# Thu, 17 Sep 2026 21:13:23 GMT
ENV APIFW_PATH=/opt/api-firewall
# Thu, 17 Sep 2026 21:13:23 GMT
ENV PATH=/opt/api-firewall:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Thu, 17 Sep 2026 21:13:23 GMT
RUN set -eux;     adduser -u 1000 -H -h /opt -D -s /bin/sh api-firewall # buildkit
# Thu, 17 Sep 2026 21:13:23 GMT
ENV APIFIREWALL_VERSION=v0.9.6
# Thu, 17 Sep 2026 21:13:24 GMT
RUN set -eux;         apk add --no-cache wget;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-amd64-musl.tar.gz";             sha256='c533716f7dd3db86a8b70879b83fe14292c8f5b9d3974daf20272317ac6e9ffc';             ;;         'aarch64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-arm64-musl.tar.gz";             sha256='274579a052a5ff966430ab279f5990a83839492817433f2ae5860abc0f4f7a5f';             ;;         'x86')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-386-musl.tar.gz";             sha256='14ba27c545db203673269e02cf8c02edb06eddd71d6910f44e417a13a3ac664b';             ;;         *)             echo >&2 "error: current architecture ($arch) does not have a corresponding API-Firewall binary release";             exit 1;             ;;     esac;         wget -O api-firewall.tar.gz "$url";     echo "$sha256 *api-firewall.tar.gz" | sha256sum -c;         mkdir -p "$APIFW_PATH";     tar -xzf api-firewall.tar.gz -C "$APIFW_PATH" --strip-components 1;     rm api-firewall.tar.gz;         chmod 755 $APIFW_PATH/api-firewall;         api-firewall -v # buildkit
# Thu, 17 Sep 2026 21:13:24 GMT
COPY docker-entrypoint.sh /opt/api-firewall/ # buildkit
# Thu, 17 Sep 2026 21:13:24 GMT
USER api-firewall
# Thu, 17 Sep 2026 21:13:24 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Thu, 17 Sep 2026 21:13:24 GMT
CMD ["api-firewall"]
```

-	Layers:
	-	`sha256:ace1621be7ff15b54252f68393ac33181df7f3e095e36a5d9a9892031b357d31`  
		Last Modified: Thu, 17 Sep 2026 20:37:23 GMT  
		Size: 4.2 MB (4186056 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:8e54c362681a82515c8ddef6bf58d5e91cadadc13a7119c7a8116ef785a0b3f6`  
		Last Modified: Thu, 17 Sep 2026 21:13:30 GMT  
		Size: 898.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:1c8c3172bc5f7c17f72597942abbe99ddba866b4099a0e133668167567a142b4`  
		Last Modified: Thu, 17 Sep 2026 21:13:31 GMT  
		Size: 13.3 MB (13315591 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:3ea1dab70612827098041aa083d1cfac2627af7cde6453e0f5d0b7cc92a025b1`  
		Last Modified: Thu, 17 Sep 2026 21:13:31 GMT  
		Size: 351.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `api-firewall:latest` - unknown; unknown

```console
$ docker pull api-firewall@sha256:100fb9d27004b72239e5f93788f7b66202600227626d6c6d13746cb33483316c
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **183.6 KB (183622 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:f60c5fd09bbd7dd3345a1f771e17b842283101736bf0bbc3650aee49c91a2422`

```dockerfile
```

-	Layers:
	-	`sha256:f0eeb3a49a7a97f36d37f2e8cfe903250178c8a6c1de60d54e6d7ff20a7022a4`  
		Last Modified: Thu, 17 Sep 2026 21:13:31 GMT  
		Size: 170.0 KB (170024 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:3ae9423f1ddb1a1c7278ef7ab1fec7237732332d6d0c1b22eaaa220cfce26493`  
		Last Modified: Thu, 17 Sep 2026 21:13:31 GMT  
		Size: 13.6 KB (13598 bytes)  
		MIME: application/vnd.in-toto+json

### `api-firewall:latest` - linux; 386

```console
$ docker pull api-firewall@sha256:6df1b39cb2b2a9ee0caf8ea6479d9c5eefbd59e005cac51a1b400067fb16f60a
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **16.7 MB (16695229 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:2829edcb011e613ab2b3d7d55b414e89ee4302be6f7737fc1235aa35a6bbfbbf`
-	Entrypoint: `["docker-entrypoint.sh"]`
-	Default Command: `["api-firewall"]`

```dockerfile
# Mon, 22 Jun 2026 19:20:08 GMT
ADD alpine-minirootfs-3.23.5-x86.tar.gz / # buildkit
# Mon, 22 Jun 2026 19:20:08 GMT
CMD ["/bin/sh"]
# Mon, 22 Jun 2026 19:44:30 GMT
ENV APIFW_PATH=/opt/api-firewall
# Mon, 22 Jun 2026 19:44:30 GMT
ENV PATH=/opt/api-firewall:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
# Mon, 22 Jun 2026 19:44:30 GMT
RUN set -eux;     adduser -u 1000 -H -h /opt -D -s /bin/sh api-firewall # buildkit
# Mon, 22 Jun 2026 19:44:30 GMT
ENV APIFIREWALL_VERSION=v0.9.6
# Mon, 22 Jun 2026 19:44:34 GMT
RUN set -eux;         apk add --no-cache wget;         arch="$(apk --print-arch)";     case "$arch" in         'x86_64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-amd64-musl.tar.gz";             sha256='c533716f7dd3db86a8b70879b83fe14292c8f5b9d3974daf20272317ac6e9ffc';             ;;         'aarch64')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-arm64-musl.tar.gz";             sha256='274579a052a5ff966430ab279f5990a83839492817433f2ae5860abc0f4f7a5f';             ;;         'x86')             url="https://github.com/wallarm/api-firewall/releases/download/${APIFIREWALL_VERSION}/api-firewall-386-musl.tar.gz";             sha256='14ba27c545db203673269e02cf8c02edb06eddd71d6910f44e417a13a3ac664b';             ;;         *)             echo >&2 "error: current architecture ($arch) does not have a corresponding API-Firewall binary release";             exit 1;             ;;     esac;         wget -O api-firewall.tar.gz "$url";     echo "$sha256 *api-firewall.tar.gz" | sha256sum -c;         mkdir -p "$APIFW_PATH";     tar -xzf api-firewall.tar.gz -C "$APIFW_PATH" --strip-components 1;     rm api-firewall.tar.gz;         chmod 755 $APIFW_PATH/api-firewall;         api-firewall -v # buildkit
# Mon, 22 Jun 2026 19:44:34 GMT
COPY docker-entrypoint.sh /opt/api-firewall/ # buildkit
# Mon, 22 Jun 2026 19:44:34 GMT
USER api-firewall
# Mon, 22 Jun 2026 19:44:34 GMT
ENTRYPOINT ["docker-entrypoint.sh"]
# Mon, 22 Jun 2026 19:44:34 GMT
CMD ["api-firewall"]
```

-	Layers:
	-	`sha256:732d51f3795f48d3898f2f5895e6c5a28a5feea9889892adc95157ed714ca693`  
		Last Modified: Mon, 22 Jun 2026 12:03:32 GMT  
		Size: 3.7 MB (3667990 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:7d954279a7eec82c86e0be436ba4a5db4719e7039f820665f38714fa110906ed`  
		Last Modified: Mon, 22 Jun 2026 19:44:40 GMT  
		Size: 895.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:47d2444ffc1ff173ceaac8235a89778d9a6779cbc7c3e33cc965bdc96c3f7fea`  
		Last Modified: Mon, 22 Jun 2026 19:44:41 GMT  
		Size: 13.0 MB (13025993 bytes)  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip
	-	`sha256:375b621ab0f7928bebc532f6886e8c3524beb06bb54b339f84e0b1df17023c3d`  
		Last Modified: Mon, 22 Jun 2026 19:44:40 GMT  
		Size: 351.0 B  
		MIME: application/vnd.oci.image.layer.v1.tar+gzip

### `api-firewall:latest` - unknown; unknown

```console
$ docker pull api-firewall@sha256:9f39d286b60ea7ae2e20a689199cee3a7d8a4831f0bc06b5feab0f59707ee3b0
```

-	Manifest MIME: `application/vnd.docker.distribution.manifest.v2+json`
-	Total Size: **184.1 KB (184104 bytes)**  
	(compressed transfer size, not on-disk size)
-	Image ID: `sha256:dd3c4ff96bbfd71fcb83a730bed601ca601eaba0a9dbbdcf9e9770af0a37c101`

```dockerfile
```

-	Layers:
	-	`sha256:08a6ea49b7ea1956dfdaa4e4201b50f37d16098fc4e0e4bdf328f3fce2a3bc9d`  
		Last Modified: Mon, 22 Jun 2026 19:44:40 GMT  
		Size: 170.6 KB (170627 bytes)  
		MIME: application/vnd.in-toto+json
	-	`sha256:86d430d01f1dc4701eb82aa8865d0a072951f743042081349a19fa6e3defb78d`  
		Last Modified: Mon, 22 Jun 2026 19:44:40 GMT  
		Size: 13.5 KB (13477 bytes)  
		MIME: application/vnd.in-toto+json
